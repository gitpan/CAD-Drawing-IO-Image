package CAD::Drawing::IO::Image;
our $VERSION = '0.01';

use CAD::Drawing;
use CAD::Drawing::Defined;

use strict;
use Carp;
########################################################################
=pod

=head1 NAME

CAD::Drawing::IO::Image - Output methods for images

=head1 NOTICE

THIS MODULE IS CURRENTLY EMPTY!

=head1 AUTHOR

  Eric L. Wilhelm
  ewilhelm at sbcglobal dot net
  http://pages.sbcglobal.net/mycroft

=head1 COPYRIGHT

This module is copyright (C) 2003 by Eric L. Wilhelm and A. Zahner Co.

=head1 LICENSE

This module is distributed under the same terms as Perl.  See the Perl
source package for details.

You may use this software under one of the following licenses:

  (1) GNU General Public License
    (found at http://www.gnu.org/copyleft/gpl.html)
  (2) Artistic License
    (found at http://www.perl.com/pub/language/misc/Artistic.html)

=head1 NO WARRANTY

This software is distributed with ABSOLUTELY NO WARRANTY.  The author
and his employer will in no way be held liable for any loss or damages
resulting from its use.

=head1 Modifications

The source code of this module is made freely available and
distributable under the GPL or Artistic License.  Modifications to and
use of this software must adhere to one of these licenses.  Changes to
the code should be noted as such and this notification (as well as the
above copyright information) must remain intact on all copies of the
code.

Additionally, while the author is actively developing this code,
notification of any intended changes or extensions would be most helpful
in avoiding repeated work for all parties involved.  Please contact the
author with any such development plans.


=head1 SEE ALSO

  CAD::Drawing
  Image::Magick

=head1 Changes

  0.00 First public release
  0.01 Minor changes

=cut

########################################################################

=head1 Requisite Plug-in Functions

See CAD::Drawing::IO for a description of the plug-in architecture.

=cut
########################################################################
# the following are required to be a disc I/O plugin:
our $can_save_type = "img";

=head2 check_type

Returns true if $type is "img" or $filename matches one of the
ImageMagick type extensions.

  $fact = check_type($filename, $type);

=cut
sub check_type {
	my ($filename, $type) = @_;
	if(defined($type)) {
		# FIXME: need a better method for spec'ing arbitrary type
		($type eq "img") && return("img");
		return();
	}
	elsif($filename =~ m/.*\.(\w+)$/) {
		my $ext = $1;
		($ext =~ m/tif|gif|jpg|png|bmp|eps|fax|fig|pict|psd|xcf/) &&
			return("img");
	}
	return();
} # end subroutine check_type definition
########################################################################

=head1 Methods

=cut
########################################################################

=head2 load

  load();

=cut
sub load {

} # end subroutine load definition
########################################################################

=head2 save

  save();

=cut
sub save {

} # end subroutine save definition
########################################################################

=head2 image_colors

  image_colors();

=cut
sub image_colors {

} # end subroutine image_colors definition
########################################################################
1;
