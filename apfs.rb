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

# Object Types


# values used as types and subtypes by the obj_phys_t structure
CABECEAE EDAEADBE BEBCEAAC CECEDEFE D0000000 001BECEE BCAACCEC EDEFED00 00000002 BECEBEEA ACCECEDE FED00000 00003BEC EBEEDEAA CCECEDEF ED000000 0005BECE ACEAAACC ECEDEFED 00000000 06BECEAC EACABAAC CECEDEFE D0000000 007BECEA CEACBAAC CECEDEFE D0000000 008BECEA CEABAAAC CECEDEFE D0000000 009BECEA CEAFEEEE AACCECED EFED0000 00000ABE CEEEAACC ECEDEFED 00000000 0BBECEAA ACCECEDE FED00000 0000CBEC ECECAAAC CECEDEFE D0000000 00DBECEF AACCECED EFED0000 00000EBE CEBCEFEE AACCECED EFED0000 00000FBE CEAEAEEA ACCECEDE FED00000 00010BEC EEAEAACC ECEDEFED 00000000 11BECEEA AACCECED EFED0000 000012BE CEAAAACC ECEDEFED 00000000 13BECEEF AAACCECE DEFED000 0000014B ECEFDDEE EAACCECE DEFED000 0000015B ECEFBCAA CCECEDEF ED000000 0016BECE FBCAACCE CEDEFED0 00000001 7BECEEAE AACCECED EFED0000 000018BE CEBAAACC ECEDEFED 00000000 19BECEBA EEAACCEC EDEFED00 0000001A BECEBABC AACCECED EFED0000 00001BBE CEEECEBC AACCECED EFED0000 00001CBE CEAEAEAA CCECEDEF ED000000 001DBECE EEAAACCE CEDEFED0 00000001 EBECEFEE EAACCECE DEFED000 000001FB ECEEEED2 0AACCECE DEFED000 0000000B ECEADAAC CECEDEFE D0000000 0FFBECEE AACCECED EFEDEBEC ECAEEBAA ACCECEDE FEDECBEC EEEBAAAC CECEDEFE DEBECEED AEBAED


