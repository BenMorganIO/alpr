defmodule Alpr do
  @doc """
    Submit an image of a license that has been taken via IR or visible light.
    The license plate number will be returned as a string.
  """
  @spec process(String.t) :: String.t
  def process(image_name) do
    image_name
    |> load_image
    |> preprocess
    |> localize
    |> cc_analysis
    |> segment
    |> character_recognition
  end

  @doc """
    A set of algorithms are applied to the image to enhance it's quality. An
    important and common phase in computer vision systems, we'll be applying two
    processes: resizing and convert color space (CCS).

    In the resizing, we'll be lowering the image size in case it is too big as
    well as setting the aspect ratio incase it's too wide. Afterwards, we'll
    convert the color space from RGB (three channels of information) to black
    and white where there are only two channels of information.
  """
  @spec preprocess(image) :: image
  defp preprocess(image) do
    # resize the image to a maximum size
    # set an appropriate aspect ratio
  end

  @doc """
    Picture of license plates often contain data of the environment they were
    in, as well as the backdrop of the vehicle. This isn't any concern to us,
    therefore we can remove this and instead focus in on what truly interests
    us: the license plate.

    The process for localization is called thresholding. The pixels in are
    truncated to two values. Those two values are dependent upon the threshold.
    The threshold is thereby calculated pre-image which helps avoid non-uniform
    illumination.
  """
  @spec localize(image) :: image
  defp localize(image) do
  end

  @doc """
    In connected component analysis, we'll be converting the images from their
    pixel to pixel RGB nature to finding all of the connected components (blobs)
    and then label and extract them.
  """
  @spec cc_analysis(image) :: image
  defp cc_analysis(image) do
  end

  @doc """
    Segmentation is the process of splitting the image up into several blocks.
    Each block would, ideally represent letters. This is done via taking each
    letter and running it via a classifier and removing any unwanted guests,
    such as F-O-R-D.
  """
  @spec segment(image) :: image
  defp segment(image) do
  end

  @doc """
    At this point, we should have several images of "blobs" of letters. We can
    now send over this data to an OCR and trust that it correctly identifies
    the character's we've segmented out.
  """
  @spec preprocess(image) :: String.t
  defp character_recognition(image) do
  end
end
