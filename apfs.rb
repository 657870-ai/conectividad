#!/usr/bin/ruby

def paddr_t(paddr_t)
		# physical address of a non-disk block
	typdef * int64_t
end

def prange_t(prange_t)
		# a range of physical addresses
	prange = Struct.new(:paddr_t, :pr_start_paddr, :uint64_t, :pr_block_count)
	typedef = prange prange_t
	prange_t = prange_t.new(paddr_t pr_start_paddr)
	pr_blockcount_count = prange.new(uint64_t pr_blockcount_count)
puts prange_t 

def uuid_t(typedef)
		# a universally unique identifier
	unsigned char.uuid_t[16]
end


class obj_phys_t
		# a header used at the beginning of all objects
	attr_accesor :Struct.new(:obj_phys, :uint8_t, :oid_t, :xid, :uint32_t)
	
	def initialize(obj_phys)
		@uint8_t 	= _ocksum[MAX_CKSUM_SIZE]
		@oid_t		= o_oid
		@xid_t		= o_xid
		@uint32_t	= o_type
		@uint32_t	= o_subtype
	end
end

class MAX_CKSUM_SIZE :defined?(Struct * obj_phys_t)
	
	def initialize(self, o_cksum)
		@uint_t = o_cksum[MAX_CKSUM_SIZE]					# The Fletcher 64 checksum of the object
		@o_oid = oid_t.o_oid								# The object's identifier
		@o_xid = xid_t.o_xid								# the identifier of the most recent transaction that this object was 														# modified in
		@o_type = uint32_t.o_type							# the object's type and flags 
															# an object type is a 32 bit value: the low 16 bits indicate the type,
															# and the high 16 bits are flags
		@o_subtype = uint32_t.o_subtype						# the object's subtype
		@MAX_CKSUM_SIZE = defined?(MAX_CKSUM_SIZE) * 8		# the number of bytes used for an object checksum
	end
end

typedef.to_sym = Struct.new(:uint64_t, :oid_t)						# types used as identifiers within an object
typedef.to_sym = Struct.new(:uint64_t, :xid_t)						# types used as identifiers within an object
		
		
oidt_t.to_sym = typedef * Struct.new(:uint64_t, :oid_t)				# an object identifier

# beginning of the transaction identifier

require 'pstore'										
xid_t = PStore.new("AFEAFECE 0D")
xid_t.transaction do
	xid_t[:transaction] ||= typedef.new
	xid_t[:transaction] << uint64_t
	xid_t[:transaction] << xid_t
end

# end of the transaction identifier



# beginning constants used for virtual objects that always have a given identifier
class ObjectIdentifierConstants
	attr_accessor :defined?(1 = OID_NX_SUPERBLOCK)
	attr_accessor :defined?(0ULL = OID_INVALID)
	attr_accessor : defined?(1024 = OID_RESERVED_COUNT)
end
# end of constants used for virtual objects that always have a given identifier	


class OID_NX_SUPERBLOCK									# the ephemeral object identifier for the container super block
	attr_accessor :defined?(1 = OID_NX_SUPERBLOCK)
end

class OID_INVALID										# an invalid object identifier
	attr_accessor :defined?(0ULL = OID_INVALID)
end

class OID_SERSERVED_COUNT								
	attr_accessor :defined?(1024 = OID_SERSERVED_COUNT) 	# the number of object identifiers tat are reserved for objects with a 															# fixed with a fixed object identifier
												
# Object Type Masks

class ObjectTypeMasks
	attr_accessor :defined?(0x0000ffff = OBJECT_TYPE_MASK)
	attr_accessor :defined?(0xffff0000 = OBJECT_TYPE_FLAGS_MASK)
	attr_accessor :defined?(0xc0000000 = OBJECT_STORAGETYPE_MASK)
	attr_accessor :defined?(0xf8000000 = OBJECT_TYPE_FLAGS_DEFINED_MASK)
end

class OBJ_TYPE_MASK													# the bit mask used to access the type
	attr_accessor :defined?(0x0000ffff = OBJ_TYPE_MASK)
end

class OBJ_TYPE_FLAGS_MASK											# the bit mask used to access the flags
	attr_accessor :defined?(0xffff0000 = OBJ_TYPE_FLAGS_MASK)
end

class OBJ_STORAGETYPE_MASK
	attr_accessor :defined?(0xc0000000 = OBJ_STORAGETYPE_MASK)

class OBJ_TYPE_FLAGS_DEFINED_MASK											# a bit mask of all bits for which flags are defined
	attr_accessor :defined?(0xf8000000 = OBJ_TYPE_FLAGS_DEFINED_MASK)
end


################
# Object Types #
################

# values used as types and subtypes 
CABECEAE EDAEADBE BEBCEAAC CECEDEFE D0000000 001BECEE BCAACCEC EDEFED00 00000002 BECEBEEA ACCECEDE FED00000 00003BEC EBEEDEAA CCECEDEF ED000000 0005BECE ACEAAACC ECEDEFED 00000000 06BECEAC EACABAAC CECEDEFE D0000000 007BECEA CEACBAAC CECEDEFE D0000000 008BECEA CEABAAAC CECEDEFE D0000000 009BECEA CEAFEEEE AACCECED EFED0000 00000ABE CEEEAACC ECEDEFED 00000000 0BBECEAA ACCECEDE FED00000 0000CBEC ECECAAAC CECEDEFE D0000000 00DBECEF AACCECED EFED0000 00000EBE CEBCEFEE AACCECED EFED0000 00000FBE CEAEAEEA ACCECEDE FED00000 00010BEC EEAEAACC ECEDEFED 00000000 11BECEEA AACCECED EFED0000 000012BE CEAAAACC ECEDEFED 00000000 13BECEEF AAACCECE DEFED000 0000014B ECEFDDEE EAACCECE DEFED000 0000015B ECEFBCAA CCECEDEF ED000000 0016BECE FBCAACCE CEDEFED0 00000001 7BECEEAE AACCECED EFED0000 000018BE CEBAAACC ECEDEFED 00000000 19BECEBA EEAACCEC EDEFED00 0000001A BECEBABC AACCECED EFED0000 00001BBE CEEECEBC AACCECED EFED0000 00001CBE CEAEAEAA CCECEDEF ED000000 001DBECE EEAAACCE CEDEFED0 00000001 EBECEFEE EAACCECE DEFED000 000001FB ECEEEED2 0AACCECE DEFED000 0000000B ECEADAAC CECEDEFE D0000000 0FFBECEE AACCECED EFEDEBEC ECAEEBAA ACCECEDE FEDECBEC EEEBAAAC CECEDEFE DEBECEED AEBAED


# a container superblock

636C6173 7320436C 61737320 0A096465 66206164 645F6163 63657373 6F72284F 424A4543 545F5459 50455F4E 585F5355 50455242 4C4F434B 29200A09 0973656C 662E636C 6173735F 6576616C 20257B20 0A090909 64656620 237B4F42 4A454354 5F545950 455F4E58 5F535550 4552424C 4F434B7D 200A0909 09094023 7B4F424A 4543545F 54595045 5F4E585F 53555045 52424C4F 434B7D20 0A090909 656E6420 0A090909 0A090909 64656620 237B4F42 4A454354 5F545950 455F4E58 5F535550 4552424C 4F434B7D 3D286E78 5F737570 6572626C 6F636B5F 74290A09 09090940 237B4F42 4A454354 5F545950 455F4E58 5F535550 4552424C 4F434B7D 203D2030 78303030 30303030 310A0909 09656E64 0A09097D 0A09656E 640A656E 64	

# A B-tree root node

636C6173 7320436C 61737320 0A096465 66206164 645F6163 63657373 6F72284F 424A4543 545F5459 50455F42 54524545 290A0909 73656C66 2E636C61 73735F65 76616C20 257B0A09 09096465 6620237B 4F424A45 43545F54 5950455F 42545245 457D0A09 09090940 237B4F42 4A454354 5F545950 455F4254 5245457D 0A090909 09656E64 0A09090A 09090964 65662023 7B4F424A 4543545F 54595045 5F425452 45457D3D 28627472 65655F6E 6F64655F 70687973 5F74290A 09090909 40237B4F 424A4543 545F5459 50455F42 54524545 7D203D20 30783030 30303030 30320A09 0909656E 640A0909 7D0A0965 6E640A65 6E640A0A


# a b-tree node

636C6173 7320436C 6173730A 09646566 20616464 5F616363 6573736F 72284F42 4A454354 5F545950 455F4254 5245455F 4E4F4445 290A0909 73656C66 2E636C61 73735F65 76616C20 257B0A09 09096465 6620237B 4F424A45 43545F54 5950455F 42545245 455F4E4F 44457D0A 09090909 40237B4F 424A4543 545F5459 50455F42 54524545 5F4E4F44 457D0A09 0909656E 640A0909 090A0909 09646566 20237B4F 424A4543 545F5459 50455F42 54524545 5F4E4F44 457D3D28 62747265 655F6E6F 64655F70 6879735F 74290A09 09090940 237B4F42 4A454354 5F545950 455F4254 5245455F 4E4F4445 7D203D20 30783030 30303030 30330A09 0909656E 640A0909 7D0A0965 6E640A65 6E64

# A space manager

636C6173 7320436C 6173730A 09646566 20616464 5F616363 6573736F 72287365 6C662C20 4F424A45 43545F54 5950455F 53504143 454D414E 290A0909 73656C66 2E636C61 73735F65 76616C20 257B0A09 09096465 6620237B 4F424A45 43545F54 5950455F 53504143 454D414E 7D0A0909 09094023 7B4F424A 4543545F 54595045 5F535041 43454D41 4E7D0A09 0909656E 640A0909 090A0909 09646566 20237B4F 424A4543 545F5459 50455F53 50414345 4D414E7D 3D287370 6163656D 616E5F70 6879735F 74290A09 09090940 237B4F42 4A454354 5F545950 455F5350 4143454D 414E7D20 3D203078 30303030 30303035 0A090909 656E640A 09097D0A 09656E64 0A656E64 0A

# an address block used by the space manager

646566206164645F61636365736F7228 4F424A4543545F545950455F53504143 455F434142292073656C662E636C6173 735F6576616C20257B2064656620237B 4F424A4543545F545950455F53504143 455F4341427D2040237B4F424A454354 5F545950455F53504143455F4341427D 20656E642064656620237B4F424A4543 545F545950455F53504143455F434142 7D3D286369625F616464725F626C6F63 6B292040237B4F4245435F545950455F 53504143455F4341427D203D20307830 3030303030303620656E64207D20656E 6420656E64

# a block used by the space manager

636C61737320436C6173730A09646566 206164645F6163636573736F72284F42 4A4543545F545950455F53504143454D 414E5F434942290A090973656C662E63 616C73735F6576616C20257B0A090909 64656620237B4F424A4543545F545950 455F53504143454D414E5F4349427D0A 0909090940237B4F424A4543545F5459 50455F53504143454D414E5F4349427D 0A090909656E640A0909090A09090964 656620237B4F424A4543545F54595045 5F53504143454D414E5F4349427D3D28 6368756E6B5F696E666F5F626C6F636B 290A0909090940237B4F424A4543545F 545950455F53504143454D414E5F4349 427D203D20307830303030303030370A 090909656E640A09097D0A09656E640A 656E640A

# a bitmap used by the space manager

636C61737320436C6173730A09646566206164645F6163636573736F72284F424A4543545F545950455F53504143454D414E5F4249544D4150290A090973656C662E636C6173735F6576616C20257B0A09090964656620237B4F424A4543545F545950455F53504143454D414E5F4249544D41507D0A0909090940237B4F424A4543545F545950455F53504143454D414E5F4249544D41507D0A090909656E640A0909090A09090964656620237B4F424A4543545F545950455F53504143454D414E5F4249544D41507D3D28646566696E65643F202424290A0909090940237B4F424A4543545F545950455F53504143454D414E5F4249544D41507D203D2030 7830303030303030300A090909656E640A09097D0A09656E640A656E640A


# a queue used by the space manager

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 50 41 43 45 4D 41 4E 5F 46 52 45 45 5F 51 55 45 55 45 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 50 41 43 45 4D 41 4E 5F 46 52 45 45 5F 51 55 45 55 45 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 50 41 43 45 4D 41 4E 5F 46 52 45 45 5F 51 55 45 55 45 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 50 41 43 45 4D 41 4E 5F 46 52 45 45 5F 51 55 45 55 45 7D 3D 28 73 70 61 63 65 6D 61 6E 5F 66 72 65 65 5F 71 75 65 75 65 5F 6B 65 79 5F 74 2C 20 73 70 61 63 65 6D 61 6E 5F
66 72 65 65 5F 71 75 65 75 65 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 50 41 43 45 4D 41 4E 5F 46 52 45 45 5F 51 55 45 55 45 7D


# a extents-list tree

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 45 4E 54 5F 4C 49 53 54 5F 54 52 45 45 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 45 4E 54 5F 4C 49 53 54 5F 54 52 45 45 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 45 4E 54 5F 4C 49 53 54 5F 54 52 45 45 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 45 4E 54 5F 4C 49 53 54 5F 54 52 45 45 7D 3D 28 70 61 64 64 72 5F 74 2C 20 70 72 61 6E 67 65 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 45 4E 54 5F 4C 49 53
54 5F 54 52 45 45 7D 20 3D 20 30 78 30 30 30 30 30 30 30 61 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D 0D 0D



# as a type an object map;
# as a subtype a tree that stores the records of an object map


63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 7D 3D 28 6F 6D 61 70 5F 70 68 79 73 5F 74 2C 20 6F 6D 61 70 5F 6B 65 74 5F 74 2C 20 6F 6D 61 70 5F 76 61 6C 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 7D 20 3D 20 30 78 30 30 30 30 30 30 30 62 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D


# a checkpoint map

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 43 48 45 43 4B 50 4F 49 4E 54 5F 4D 41 50 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 43 48 45 43 4B 50 4F 49 4E 54 5F 4D 41 50 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 43 48 45 43 4B 50 4F 49 4E 54 5F 4D 41 50 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 43 48 45 43 4B 50 4F 49 4E 54 5F 4D 41 50 7D 3D 28 63 68 65 63 6B 70 6F 69 6E 74 5F 6D 61 70 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 43 48 45 43 4B 50 4F 49 4E 54 5F 4D 41 50
7D 20 3D 20 30 78 30 30 30 30 30 30 30 63 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64


# a volume

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 7D 3D 28 61 70 66 73 5F 73 75 70 65 72 62 6C 6F 63 6B 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 7D 20 3D 20 30 78 30 30 30 30 30 30 30 64 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D


# a tree containing file-system records

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 54 52 45 45 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 54 52 45 45 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 54 52 45 45 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 54 52 45 45 7D 3D 28 24 24 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 46 53 54 52 45 45 7D 20 3D 20 30 78 30 30 30 30 30 30 30 65 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D


# a tree containing extent references

63 6C 61 73 73 20 43 6C 61 73 73 20 0D 09 64 65 66 20 61 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 42 4C 4F 43 4B 52 45 46 54 52 45 45 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 42 4C 4F 43 4B 52 45 46 54 52 45 45 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 42 4C 4F 43 4B 52 45 46 54 52 45 45 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 42 4C 4F 43 4B 52 45 46 54 52 45 45 7D 3D 28 6A 5F 70 68 79 73 5F 65 78 74 5F 6B 65 79 5F 74 2C 20 6A 5F 70 68 79 73 5F 65 78 74 5F 76 61 6C 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 42 4C 4F 43 4B 52 45 46 54
52 45 45 7D 20 3D 20 30 78 30 30 30 30 30 30 30 66 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D

# a tree containing snapshot metadata for a volume

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 4E 41 50 4D 45 54 41 54 52 45 45 29 0D 09 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 4E 41 50 4D 45 54 41 54 52 45 45 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 4E 41 50 4D 45 54 41 54 52 45 45 7D 3D 28 6A 5F 73 6E 61 70 5F 6D 65 74 61 64 61 74 61 5F 6B 65 79 5F 74 2C 20 6A 5F 73 6E 61 70 5F 6D 65 74 61 64 61 74 61 5F 76 61 6C 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 4E 41 50 4D 45 54 41 54 52 45 45 7D 20 3D 20 30 78 30 30 30 30 30 30 31 30 0D 09 09
09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64


# A reaper

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 53 5F 52 45 41 50 45 52 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 53 5F 52 45 41 50 45 52 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 53 5F 52 45 41 50 45 52 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 53 5F 52 45 41 50 45 52 7D 3D 28 6E 78 5F 72 65 61 70 65 72 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 53 5F 52 45 41 50 45 52 7D 20 3D 20 30 78 30 30 30 30 30 30 31 31 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64
0D 65 6E 64 0D

# a reaper list

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 52 45 41 50 45 52 5F 4C 49 53 54 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 52 45 41 50 45 52 5F 4C 49 53 54 42 4A 45 43 54 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 52 45 41 50 45 52 5F 4C 49 53 54 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 52 45 41 50 45 52 5F 4C 49 53 54 7D 3D 28 6E 78 5F 72 65 61 70 5F 6C 69 73 74 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 52 45 41 50 45 52 5F 4C
49 53 54 7D 20 3D 20 30 78 30 30 30 30 30 30 31 32 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64

# a tree containing information about snapshots of an object map

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 5F 53 4E 41 50 53 48 4F 54 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 5F 53 4E 41 50 53 48 4F 54 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 5F 53 4E 41 50 53 48 4F 54 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 5F 53 4E 41 50 53 48 4F 54 7D 3D 28 78 69 64 5F 74 2C 20 6F 6D 61 70 5F 73 6E 61 70 73 68 6F 74 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4F 4D 41 50 5F 53 4E 41 50 53 48 4F 54 7D 20 3D 20
30 78 30 30 30 30 30 30 31 33 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64

# EFI information used for booting

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 46 49 5F 4A 55 4D 50 53 54 41 52 54 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 46 49 5F 4A 55 4D 50 53 54 41 52 54 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 46 49 5F 4A 55 4D 50 53 54 41 52 54 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 46 49 5F 4A 55 4D 50 53 54 41 52 54 7D 3D 28 6E 78 5F 65 66 69 5F 6A 75 6D 70 73 74 61 72 74 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 46 49 5F 4A 55 4D 50 53 54 41 52 54 7D 20 3D 20 30 78 30 30
30 30 30 30 31 34 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D

# a tree used for Fusion devices to track blocks form the hard drive that are cached on the solid-state drive

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 46 55 53 49 4F 4E 5F 4D 49 44 44 4C 45 5F 54 52 45 45 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 46 55 53 49 4F 4E 5F 4D 49 44 44 4C 45 5F 54 52 45 45 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 46 55 53 49 4F 4E 5F 4D 49 44 44 4C 45 5F 54 52 45 45 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 46 55 53 49 4F 4E 5F 4D 49 44 44 4C 45 5F 54 52 45 45 7D 3D 28 66 75 73 69 6F 6E 5F 6D 74 5F 6B 65 79 5F 74 2C 20 66 75 73 69 6F 6E 5F 6D 74 5F 76 61 6C 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A
45 43 54 5F 54 59 50 45 46 55 53 49 4F 4E 5F 4D 49 44 44 4C 45 5F 54 52 45 45 7D 20 3D 20 30 78 30 30 30 30 30 30 31 35 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D

# a write-back cache state

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 46 55 53 49 4F 4E 5F 57 42 43 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 46 55 53 49 4F 4E 5F 57 42 43 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 46 55 53 49 4F 4E 5F 57 42 43 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 46 55 53 49 4F 4E 5F 57 42 43 7D 3D 28 66 75 73 69 6F 6E 5F 77 62 63 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 46 55 53 49 4F 4E 5F 57 42 43 7D 20 3D 20 30 78 30 30 30
30 30 30 31 36 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64

# a write back cache list used for fusion devices

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 46 55 53 49 4F 4E 5F 57 42 43 5F 4C 49 53 54 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 46 55 53 49 4F 4E 5F 57 42 43 5F 4C 49 53 54 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 46 55 53 49 4F 4E 5F 57 42 43 5F 4C 49 53 54 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 4E 58 5F 46 55 53 49 4F 4E 5F 57 42 43 5F 4C 49 53 54 7D 3D 28 66 75 73 69 6F 6E 5F 77 62 63 5F 6C 69 73 74 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 23 7B 4F 42 4A 45 43 54 5F 54 59 50
7D 20 3D 20 30 78 30 30 30 30 30 30 31 37 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D

# an encryption rolling state 

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 52 5F 53 54 41 54 45 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 52 5F 53 54 41 54 45 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 52 5F 53 54 41 54 45 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 52 5F 53 54 41 54 45 7D 3D 28 65 72 5F 73 74 61 74 65 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 52 5F 53 54 41 54 45 7D 20 3D 20 30 78 30 30 30 30 30 30 31 38 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D


# a general purpose bitmap

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 7D 3D 28 67 62 69 74 6D 61 70 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 7D 20 3D 20 30 78 30 30 30 30 30 30 31 39 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D

# a b-tree of general-purpose bitmaps

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 5F 54 52 45 45 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 5F 54 52 45 45 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 5F 54 52 45 45 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 5F 54 52 45 45 7D 3D 28 75 69 6E 74 36 34 5F 74 2C 20 75 69 6E 74 36 34 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 47 42 49 54 4D 41 50 5F 54 52 45 45 7D 20 3D 20 30 78 30 30 30 30 30 30 31
61 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D

# information that can be used to recover from a system crash if one occurs during the encryption rolling process

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 52 5F 52 45 43 4F 56 45 52 59 5F 42 4C 4F 43 4B 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 52 5F 52 45 43 4F 56 45 52 59 5F 42 4C 4F 43 4B 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 52 5F 52 45 43 4F 56 45 52 59 5F 42 4C 4F 43 4B 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 52 5F 52 45 43 4F 56 45 52 59 5F 42 4C 4F 43 4B 7D 3D 28 65 72 5F 72 65 63 6F 76 65 72 79 5F 62 6C 6F 63 6B 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45
5F 45 52 5F 52 45 43 4F 56 45 52 59 5F 42 4C 4F 43 4B 7D 20 3D 20 30 78 30 30 30 30 30 30 31 63 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D


# additional metadata about snapshots

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 4E 41 50 5F 4D 45 54 41 5F 45 58 54 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 4E 41 50 5F 4D 45 54 41 5F 45 58 54 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 4E 41 50 5F 4D 45 54 41 5F 45 58 54 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 4E 41 50 5F 4D 45 54 41 5F 45 58 54 7D 3D 28 73 6E 61 70 5F 6D 65 74 61 5F 65 78 74 5F 6F 62 6A 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 53 4E 41 50 5F 4D 45 54 41 5F 45 58 54 7D 20
3D 20 30 78 30 30 30 30 30 30 31 64 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64


# An integrity metada object

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 54 45 47 52 49 54 59 5F 4D 45 54 41 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 54 45 47 52 49 54 59 5F 4D 45 54 41 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 54 45 47 52 49 54 59 5F 4D 45 54 41 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 54 45 47 52 49 54 59 5F 4D 45 54 41 7D 3D 28 69 6E 74 65 67 72 69 74 79 5F 6D 65 74 61 5F 70 68 79 73 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 54 45 47 52 49 54 59 5F 4D 45 54 41
7D 20 3D 20 30 78 30 30 30 30 30 30 31 65 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D


# a b-tree of file extents

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 5F 46 52 45 45 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 5F 46 52 45 45 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 5F 46 52 45 45 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 5F 46 52 45 45 7D 3D 28 66 65 73 74 5F 74 72 65 65 5F 6B 65 79 5F 74 2C 20 66 65 78 74 5F 74 72 65 65 5F 76 61 6C 5F 74 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 45 58 54 5F 46 52 45 45 7D 20 3D 20 30 78 30 30 30 30 30 30 31 66 0D 09 09 09 65
6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64


# Reserved

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 52 45 53 45 52 56 45 44 5F 32 30 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 52 45 53 45 52 56 45 44 5F 32 30 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 52 45 53 45 52 56 45 44 5F 32 30 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 52 45 53 45 52 56 45 44 5F 32 30 7D 3D 28 24 24 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 52 45 53 45 52 56 45 44 5F 32 30 7D 20 3D 20 30 78 30 30 30 30 30 30 32 30 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64

# as a type, an invalid object;
# as a subtype, an object with no subtype

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 56 41 4C 49 44 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 56 41 4C 49 44 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 56 41 4C 49 44 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 56 41 4C 49 44 7D 3D 28 24 24 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 49 4E 56 41 4C 49 44 7D 20 3D 20 30 78 30 30 30 30 30 30 30 30 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64 0D


# reserved for testing

63 6C 61 73 73 20 43 6C 61 73 73 0D 09 64 65 66 20 61 64 64 5F 61 63 63 65 73 73 6F 72 28 4F 42 4A 45 43 54 5F 54 59 50 45 5F 54 45 53 54 29 0D 09 09 73 65 6C 66 2E 63 6C 61 73 73 5F 65 76 61 6C 20 25 7B 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 54 45 53 54 7D 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 54 45 53 54 7D 0D 09 09 09 65 6E 64 0D 09 09 09 0D 09 09 09 64 65 66 20 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 54 45 53 54 7D 3D 28 24 24 29 0D 09 09 09 09 40 23 7B 4F 42 4A 45 43 54 5F 54 59 50 45 5F 54 45 53 54 7D 20 3D 20 30 78 30 30 30 30 30 30 66 66 0D 09 09 09 65 6E 64 0D 09 09 7D 0D 09 65 6E 64 0D 65 6E 64


