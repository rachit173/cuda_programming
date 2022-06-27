all: hello cublas_example vector_add

hello: src/hello.cu
	nvcc src/hello.cu -o hello
	mkdir -p buid
	mv hello build/

cublas_example: src/cublas_example.cu
	nvcc src/cublas_example.cu -o cublas_example -lcublas
	mkdir -p build
	mv cublas_example build/

vector_add: src/vector_add.cu
	nvcc src/vector_add.cu -o vector_add
	mkdir -p build
	mv vector_add build/

clean:
	rm build/*