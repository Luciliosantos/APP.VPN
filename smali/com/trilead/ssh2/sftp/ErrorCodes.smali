.class public Lcom/trilead/ssh2/sftp/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# static fields
.field public static final SSH_FX_BAD_MESSAGE:I = 0x5

.field public static final SSH_FX_BYTE_RANGE_LOCK_CONFLICT:I = 0x19

.field public static final SSH_FX_BYTE_RANGE_LOCK_REFUSED:I = 0x1a

.field public static final SSH_FX_CANNOT_DELETE:I = 0x16

.field public static final SSH_FX_CONNECTION_LOST:I = 0x7

.field public static final SSH_FX_DELETE_PENDING:I = 0x1b

.field public static final SSH_FX_DIR_NOT_EMPTY:I = 0x12

.field public static final SSH_FX_EOF:I = 0x1

.field public static final SSH_FX_FAILURE:I = 0x4

.field public static final SSH_FX_FILE_ALREADY_EXISTS:I = 0xb

.field public static final SSH_FX_FILE_CORRUPT:I = 0x1c

.field public static final SSH_FX_FILE_IS_A_DIRECTORY:I = 0x18

.field public static final SSH_FX_GROUP_INVALID:I = 0x1e

.field public static final SSH_FX_INVALID_FILENAME:I = 0x14

.field public static final SSH_FX_INVALID_HANDLE:I = 0x9

.field public static final SSH_FX_INVALID_PARAMETER:I = 0x17

.field public static final SSH_FX_LINK_LOOP:I = 0x15

.field public static final SSH_FX_LOCK_CONFLICT:I = 0x11

.field public static final SSH_FX_NOT_A_DIRECTORY:I = 0x13

.field public static final SSH_FX_NO_CONNECTION:I = 0x6

.field public static final SSH_FX_NO_MATCHING_BYTE_RANGE_LOCK:I = 0x1f

.field public static final SSH_FX_NO_MEDIA:I = 0xd

.field public static final SSH_FX_NO_SPACE_ON_FILESYSTEM:I = 0xe

.field public static final SSH_FX_NO_SUCH_FILE:I = 0x2

.field public static final SSH_FX_NO_SUCH_PATH:I = 0xa

.field public static final SSH_FX_OK:I = 0x0

.field public static final SSH_FX_OP_UNSUPPORTED:I = 0x8

.field public static final SSH_FX_OWNER_INVALID:I = 0x1d

.field public static final SSH_FX_PERMISSION_DENIED:I = 0x3

.field public static final SSH_FX_QUOTA_EXCEEDED:I = 0xf

.field public static final SSH_FX_UNKNOWN_PRINCIPAL:I = 0x10

.field public static final SSH_FX_WRITE_PROTECT:I = 0xc

.field private static final messages:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "SSH_FX_OK"

    const-string v2, "Indicates successful completion of the operation."

    .line 47
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_EOF"

    const-string v2, "An attempt to read past the end-of-file was made; or, there are no more directory entries to return."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_NO_SUCH_FILE"

    const-string v2, "A reference was made to a file which does not exist."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_PERMISSION_DENIED"

    const-string v2, "The user does not have sufficient permissions to perform the operation."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_FAILURE"

    const-string v2, "An error occurred, but no specific error code exists to describe the failure."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_BAD_MESSAGE"

    const-string v2, "A badly formatted packet or other SFTP protocol incompatibility was detected."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_NO_CONNECTION"

    const-string v2, "There is no connection to the server."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_CONNECTION_LOST"

    const-string v2, "The connection to the server was lost."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_OP_UNSUPPORTED"

    const-string v2, "An attempted operation could not be completed by the server because the server does not support the operation."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_INVALID_HANDLE"

    const-string v2, "The handle value was invalid."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_NO_SUCH_PATH"

    const-string v2, "The file path does not exist or is invalid."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_FILE_ALREADY_EXISTS"

    const-string v2, "The file already exists."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_WRITE_PROTECT"

    const-string v2, "The file is on read-only media, or the media is write protected."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_NO_MEDIA"

    const-string v2, "The requested operation cannot be completed because there is no media available in the drive."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_NO_SPACE_ON_FILESYSTEM"

    const-string v2, "The requested operation cannot be completed because there is insufficient free space on the filesystem."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_QUOTA_EXCEEDED"

    const-string v2, "The operation cannot be completed because it would exceed the user\'s storage quota."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_UNKNOWN_PRINCIPAL"

    const-string v2, "A principal referenced by the request (either the \'owner\', \'group\', or \'who\' field of an ACL), was unknown. The error specific data contains the problematic names."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_LOCK_CONFLICT"

    const-string v2, "The file could not be opened because it is locked by another process."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_DIR_NOT_EMPTY"

    const-string v2, "The directory is not empty."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_NOT_A_DIRECTORY"

    const-string v2, "The specified file is not a directory."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_INVALID_FILENAME"

    const-string v2, "The filename is not valid."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_LINK_LOOP"

    const-string v2, "Too many symbolic links encountered or, an SSH_FXF_NOFOLLOW open encountered a symbolic link as the final component."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_CANNOT_DELETE"

    const-string v2, "The file cannot be deleted. One possible reason is that the advisory READONLY attribute-bit is set."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_INVALID_PARAMETER"

    const-string v2, "One of the parameters was out of range, or the parameters specified cannot be used together."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_FILE_IS_A_DIRECTORY"

    const-string v2, "The specified file was a directory in a context where a directory cannot be used."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_BYTE_RANGE_LOCK_CONFLICT"

    const-string v2, " A read or write operation failed because another process\'s mandatory byte-range lock overlaps with the request."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_BYTE_RANGE_LOCK_REFUSED"

    const-string v2, "A request for a byte range lock was refused."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_DELETE_PENDING"

    const-string v2, "An operation was attempted on a file for which a delete operation is pending."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_FILE_CORRUPT"

    const-string v2, "The file is corrupt; an filesystem integrity check should be run."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_OWNER_INVALID"

    const-string v2, "The principal specified can not be assigned as an owner of a file."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_GROUP_INVALID"

    const-string v2, "The principal specified can not be assigned as the primary group of a file."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "SSH_FX_NO_MATCHING_BYTE_RANGE_LOCK"

    const-string v2, "The requested operation could not be completed because the\tspecifed byte range lock has not been granted."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/trilead/ssh2/sftp/ErrorCodes;->messages:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDescription(I)[Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    .line 99
    sget-object v0, Lcom/trilead/ssh2/sftp/ErrorCodes;->messages:[[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
