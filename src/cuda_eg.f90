module cuda_eg
  use cudafor
  implicit none
  private

  public :: check_cuda
contains
  subroutine check_cuda
    integer :: num_devices, ierr
    ierr = cudaGetDeviceCount(num_devices)

    if(num_devices==0) then
        print*,"No CUDA-enabled devices found"
    else
        print*,num_devices, "CUDA-enabled device(s) found"
    end if
  end subroutine check_cuda
end module cuda_eg
