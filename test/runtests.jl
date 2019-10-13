using MatlabFunctions
using Test

@testset "Matlab Functios" begin
    @testset "eye" begin
        a = eye(2)
        @test a == [1.0 0.0; 0.0 1.0]
    end
    @testset "blkdiag" begin
        a = ones(2,2)
        b = blkdiag(a,a)

        @test b == [1 1 0 0; 1 1 0 0; 0 0 1 1; 0 0 1 1]
    end
end
