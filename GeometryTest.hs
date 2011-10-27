module Main where

import HUnit
import qualified Geometry.Cube as Cube
import qualified Geometry.Cuboid as Cuboid
import qualified Geometry.Sphere as Sphere

-- assertEqual (message, expected, actual)
testCubeVolumeWithSideLength3 = 
    TestCase (assertEqual "cube volume" 27 (Cube.volume 3))

testCubeVolumeWithSideLength6 = 
    TestCase (assertEqual "cube volume" 216 (Cube.volume 6))

testCubeAreaWithSideLength3 = 
    TestCase (assertEqual "cube area" 54 (Cube.area 3))

testCubeAreaWithSideLength6 = 
    TestCase (assertEqual "cube area" 216 (Cube.area 6))

testSphereVolumeWithRadius3 = 
    TestCase (assertEqual "sphere volume" 113.097336 (Sphere.volume 3))

testSphereVolumeWithRadius6 = 
    TestCase (assertEqual "sphere volume" 904.7787 (Sphere.volume 6))

testSphereAreaWithRadius3 = 
    TestCase (assertEqual "sphere area" 113.097336 (Sphere.area 3))

testSphereAreaWithRadius6 = 
    TestCase (assertEqual "sphere area" 452.38934 (Sphere.area 6))

testCuboidVolumeWithSpecificSideLengths = 
    TestCase (assertEqual "cuboid volume" 24 (Cuboid.volume 3 2 4))

testCuboidAreaWithSpecificSideLengths = 
    TestCase (assertEqual "cuboid area" 52 (Cuboid.area 3 2 4))

allTests = 
    TestList [
        TestLabel "Calculated cube volume for side length 3" testCubeVolumeWithSideLength3,
        TestLabel "Calculated cube volume for side length 6" testCubeVolumeWithSideLength6,
        TestLabel "Calculated cube area for side length 3" testCubeAreaWithSideLength3,
        TestLabel "Calculated cube area for side length 6" testCubeAreaWithSideLength6,
        TestLabel "Calculated sphere volume for radius 3" testSphereVolumeWithRadius3,
        TestLabel "Calculated sphere volume for radius 6" testSphereVolumeWithRadius6,
        TestLabel "Calculated sphere area for radius 3" testSphereAreaWithRadius3,
        TestLabel "Calculated sphere area for radius 6" testSphereAreaWithRadius6,
        TestLabel "Calculated cuboid volume for a=3 b=2 h=4" testCuboidVolumeWithSpecificSideLengths,
        TestLabel "Calculated cuboid area for a=3 b=2 h=4" testCuboidAreaWithSpecificSideLengths
    ]

main = do runTestTT allTests