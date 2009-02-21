module Render where

import Graphics.Rendering.OpenGL
import Graphics.UI.GLUT

startup = do
  initialDisplayMode $= [DoubleBuffered]
  createWindow "Hello world"
  actionOnWindowClose $= MainLoopReturns
  clearColor $= Color4 1 1 1 (1::GLclampf)
  color $ Color3 1 0 (0::GLfloat)
  displayCallback $= render

render = do
  clear [ColorBuffer]
  color $ Color3 1.0 0 (0.0::GLfloat)
  loadIdentity
  rect (Vertex2 0 (0::GLfloat)) (Vertex2 0.5 (0.5::GLfloat))
  swapBuffers
