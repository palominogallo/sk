#include <iostream>
#include <cstdlib>
#include <fstream>
#include <vector>
#include <algorithm>
#include <cassert>
#include <TROOT.h>
#include <TFile.h>
#include <TTree.h>

using namespace std;

const Int_t kMaxToys = 20000;
const Int_t kMaxBins = 3000;

//=================================================================
// FlipArray
//=================================================================
int FlipArray(TString iDir, TString oFile, Int_t N_BINS, Int_t N_TOYS )
{
  double NLLtot;

	std::vector< std::vector<double> > ZeArray(kMaxToys, std::vector<double>(kMaxBins) );

  for (int i = 0; i < N_BINS; i++)
  {
		TFile *f1 = new TFile(iDir+Form("/sepfitter%d.root",i),"read" );
		assert(!f1->IsZombie());

		TTree *SepTree = (TTree*)f1->Get("SepTree");
		assert(N_TOYS<=SepTree->GetEntries() );
		SepTree->SetBranchAddress("NLLtot",&NLLtot);

		for (int itoy = 0; itoy < N_TOYS; itoy++)
		{
			SepTree->GetEntry(itoy);
			ZeArray[itoy][i] = NLLtot;
		}
    SepTree=NULL;
    delete f1;
  }

  TFile *out1 = new TFile(oFile,"recreate");
  TTree *FitTree = new TTree("FitTree","tree");
  double FitRes[kMaxBins];
	FitTree->Branch( "N_BINS", &N_BINS, "N_BINS/I" );
  FitTree->Branch( "FitRes", FitRes, Form("FitRes[%d]/D",N_BINS) );

  for (int itoy = 0; itoy < N_TOYS; itoy++)
	{
    for (int i = 0; i < N_BINS; i++)
		{
			FitRes[i]=ZeArray[itoy][i];
		}
    FitTree->Fill();
  }

  out1->cd();
  FitTree->Write();
  out1->Close();
	return 0;
}

//=================================================================
// showHelp
//=================================================================
void showHelp( TString program_name )
{
	cout <<"Usage:		"<< program_name <<" \n";
	cout <<"-i <input directory> " << "\n";
	cout <<"-o <output file> " << "\n";
	cout <<"-b <number of bins> " << "\n";
	cout <<"-n <number of toys> " << "\n";
	exit(-1);
}

//=================================================================
// main
//
//=================================================================
int main(int argc, char **argv)
{
	TString idir;
	TString ofile;
	Int_t N_BINS = 0;
	Int_t N_TOYS = 0;

	if ( argc == 1 ) showHelp( TString(argv[0]) );
	int opt;
	while ( ( opt = getopt( argc, argv, "i:o:b:n:") ) != -1 )
	{
		switch(opt)
		{
			case 'i': idir  = TString(optarg); break;
			case 'o': ofile = TString(optarg); break;
			case 'b': N_BINS = atoi(optarg); break;
			case 'n': N_TOYS = atoi(optarg); break;
			default  : showHelp(argv[0]);
		}
	}
	return FlipArray( idir, ofile, N_BINS, N_TOYS );
}
