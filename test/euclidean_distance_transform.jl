include("./imports.jl")

@testset ExtendedTestSet "euclidean_distance_transform" begin
    @testset ExtendedTestSet "euclidean_distance_transform" begin
        x = [
            1 1 0 0
            0 1 1 0
            0 1 0 1
            0 1 0 0
        ]
        answer = [
            1.0 1.0 0.0 0.0
            0.0 1.0 1.0 0.0
            0.0 1.0 0.0 1.0
            0.0 1.0 0.0 0.0
        ]
        @test euclidean_distance_transform(x) == answer
    end

    @testset ExtendedTestSet "euclidean_distance_transform" begin
        x = [
            1 1 1 0
            0 1 1 1
            0 1 1 1
            0 1 1 1
        ]
        answer = [
            1.0 1.4142135623730951 1.0 0.0
            0.0 1.0 1.4142135623730951 1.0
            0.0 1.0 2.0 2.0
            0.0 1.0 2.0 3.0
        ]
        @test euclidean_distance_transform(x) ≈ answer
    end
end
