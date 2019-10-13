module MatlabFunctions

using LinearAlgebra

export
    eye,
    blkdiag,
    flipud,
    fliplr

eye(N::Integer) = Matrix{Float64}(I,N,N)
eye(T::DataType, N::Integer) = Matrix{T}(I,N,N)

blkdiag(matrices...) = cat(matrices...; dims=(1,2))

flipud(A::AbstractMatrix) = reverse(A, dims = 1)

fliplr(A::AbstractMatrix) = reverse(A, dims = 2)

end # module
