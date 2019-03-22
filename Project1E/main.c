#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>

// search the first n characters in array list for character target
// return true if it is found, and false otherwise
int found(char list[], int n, char target) {
    int size = strlen(list);
    for (int i = 0; i < n; i++) {
        if (i >= size){
            return 0;
        }
        if(list[i] == target){
            return 1;
        }
    }
    return 0;
}

// initialize the encrypt array with appropriate cipher letters according to the given key
void initializeEncryptArray(char key[], char encrypt[]){
    int size = 0;//size acts as an index for encrypt
    int keySize = strlen(key);//gives you the current keySize
    for(int i=0; i < keySize; i++) {//go through all the elements in key
        if (found(encrypt, size, key[i]) == 0) {//if did not find and element of key in encrypt
            encrypt[size] = key[i];//encrypt at that position is the character of key
            size++;//then move to the next index position of encrypt
        }
    }

    for(int i = 'z'; i >= 'a'; i--){//go through the alphabet
        if (found(encrypt, size, i) == 0) {//if letter of alphabet not found in encrypt
            encrypt[size] = i; // at position size of encrypt add the letter of alphabet to encrypt backwards from z-a
            size++;//move index positions in encrypt array
        }
    }

    for(int i = 0; i < size; i++){
        printf("%c", encrypt[i]);//print out the encrypt array
    }
    printf("\n");
}

// initialize the decrypt array with appropriate substitute letters based on the encrypt array
void initializeDecryptArray(char encrypt[], char decrypt[]){
    for (int i = 0; i < 26; i++){
        decrypt[encrypt[i] - 'a'] = 'a' + i;
    }
}

// process text from the input file and write the result to the output file
// pass the encrypt array to parameter substitute if encryption is intended
// pass the decrypt array to parameter substitute if decryption is intended
void processInput(FILE *inf, FILE *outf, char substitute[]){
    char letter;
    while (fscanf(inf, "%c", &letter) != EOF){
        if (isalpha(letter)){
            if (isupper(letter)){
                fprintf(outf, "%c", substitute[letter - 'A']);
            }else{
                fprintf(outf, "%c", substitute[letter - 'a']);
            }
        }else{
            fprintf(outf, "%c", letter);
        }
    }
}


//needs to updated to handle key with duplicate letters repeating look at lab 3
int main(int argc, char *argv[]) {
    //Initializes array for encrypt and decrypt
    char encrypt[26], decrypt[26];
    //holds value or choice 1(encrypt) or 2(decrypt)
    int choice;
    //pointers to the input and outputfiles
    FILE *fin, *fout;
    if (argc != 5) {
        printf("Needs to have 5 command line arguments \n");
        printf("Use 1 for encrypt, and 2 decrypt");
        exit(1);
    }
    //Converts value from string to int
    choice = atoi(argv[1]);//uses choice as argument 1
    char *key = argv[2];//uses key are argument 2
    //Open read file
    fin = fopen(argv[3], "r");
    //write to out file
    fout = fopen(argv[4], "w");
    //Check to see if files are available to open
    if (fin == NULL || fout == NULL) {
        printf("Your file could not be opened");
        exit(1);
    }
    if (choice == 1){
        initializeEncryptArray(key, encrypt);
        processInput(fin, fout, encrypt);
    } else if (choice == 2){
        initializeEncryptArray(key, encrypt);
        initializeDecryptArray(encrypt, decrypt);
        processInput(fin, fout, decrypt);
    }else{
        printf("You need to choose 1(encrypt) or 2(decrypt).");
    }
}

