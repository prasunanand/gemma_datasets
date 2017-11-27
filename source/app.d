import std.stdio;
import std.random;

void main()
{
  int size = 1000;
  //kinship_generate(size);
  //pheno_generate(size);
  //indicator_idv_generate(size);
  //indicator_snp_generate(size);
  geno_generate(size);
}

void kinship_generate(int size){
  Random gen;

  foreach(i; 0..size){
    foreach(j; 0..size){
      write(uniform(-1.0, 2.0, gen));
      write("\t");
    }
    write("\n");
  }
}

void pheno_generate(int size){
  Random gen;

  foreach(i; 0..size){
    write(uniform(-1.0, 2.0, gen));
    write("\n");
  }
}

void indicator_idv_generate(int size){
  Random gen;

  foreach(i; 0..size){
    write(1);
    write("\t");
  }
}

void indicator_snp_generate(int size){
  Random gen;

  foreach(i; 0..size){
    foreach(j; 0..size){
      write(1);
      write("\t");
    }
    write("\n");
  }
}

void geno_generate(int size){
  Random gen;
  char[] encoding = ['A', 'T', 'G', 'C'];

  foreach(i; 0..size){
    write("identifier");
    write(", ", encoding[uniform(0,4)], ", ", encoding[uniform(0,4)]);
    foreach(j; 0..size){
      write(", ");
      write(1);
    }
    write("\n");
  }
}
