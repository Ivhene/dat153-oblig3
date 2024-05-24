.class public final enum Lorg/checkerframework/com/google/common/base/StandardSystemProperty;
.super Ljava/lang/Enum;
.source "StandardSystemProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/base/StandardSystemProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum FILE_SEPARATOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_PATH:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_COMPILER:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_EXT_DIRS:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_HOME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_IO_TMPDIR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_LIBRARY_PATH:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VENDOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR_URL:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VENDOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VENDOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum LINE_SEPARATOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum OS_ARCH:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum OS_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum OS_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum PATH_SEPARATOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum USER_DIR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum USER_HOME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

.field public static final enum USER_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 30
    new-instance v1, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "java.version"

    const-string v4, "JAVA_VERSION"

    invoke-direct {v1, v4, v2, v3}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 33
    new-instance v2, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "java.vendor"

    const-string v5, "JAVA_VENDOR"

    invoke-direct {v2, v5, v3, v4}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_VENDOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 36
    new-instance v3, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "java.vendor.url"

    const-string v6, "JAVA_VENDOR_URL"

    invoke-direct {v3, v6, v4, v5}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_VENDOR_URL:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 39
    new-instance v4, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "java.home"

    const-string v7, "JAVA_HOME"

    invoke-direct {v4, v7, v5, v6}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_HOME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 42
    new-instance v5, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "java.vm.specification.version"

    const-string v8, "JAVA_VM_SPECIFICATION_VERSION"

    invoke-direct {v5, v8, v6, v7}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 45
    new-instance v6, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "java.vm.specification.vendor"

    const-string v9, "JAVA_VM_SPECIFICATION_VENDOR"

    invoke-direct {v6, v9, v7, v8}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VENDOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 48
    new-instance v7, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "java.vm.specification.name"

    const-string v10, "JAVA_VM_SPECIFICATION_NAME"

    invoke-direct {v7, v10, v8, v9}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 51
    new-instance v8, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "java.vm.version"

    const-string v11, "JAVA_VM_VERSION"

    invoke-direct {v8, v11, v9, v10}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_VM_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 54
    new-instance v9, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "java.vm.vendor"

    const-string v12, "JAVA_VM_VENDOR"

    invoke-direct {v9, v12, v10, v11}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_VM_VENDOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 57
    new-instance v10, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "java.vm.name"

    const-string v13, "JAVA_VM_NAME"

    invoke-direct {v10, v13, v11, v12}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_VM_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 60
    new-instance v11, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "java.specification.version"

    const-string v14, "JAVA_SPECIFICATION_VERSION"

    invoke-direct {v11, v14, v12, v13}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 63
    new-instance v12, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "java.specification.vendor"

    const-string v15, "JAVA_SPECIFICATION_VENDOR"

    invoke-direct {v12, v15, v13, v14}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VENDOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 66
    new-instance v13, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "java.specification.name"

    move-object/from16 v28, v0

    const-string v0, "JAVA_SPECIFICATION_NAME"

    invoke-direct {v13, v0, v14, v15}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 69
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "java.class.version"

    move-object/from16 v29, v1

    const-string v1, "JAVA_CLASS_VERSION"

    invoke-direct {v0, v1, v14, v15}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_CLASS_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 72
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "java.class.path"

    move-object/from16 v30, v2

    const-string v2, "JAVA_CLASS_PATH"

    invoke-direct {v0, v2, v1, v15}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_CLASS_PATH:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 75
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "java.library.path"

    move-object/from16 v31, v3

    const-string v3, "JAVA_LIBRARY_PATH"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_LIBRARY_PATH:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 78
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "java.io.tmpdir"

    const-string v3, "JAVA_IO_TMPDIR"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_IO_TMPDIR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 81
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "java.compiler"

    const-string v3, "JAVA_COMPILER"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_COMPILER:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 84
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "java.ext.dirs"

    const-string v3, "JAVA_EXT_DIRS"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->JAVA_EXT_DIRS:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 87
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "os.name"

    const-string v3, "OS_NAME"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->OS_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 90
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "os.arch"

    const-string v3, "OS_ARCH"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->OS_ARCH:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 93
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "os.version"

    const-string v3, "OS_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->OS_VERSION:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 96
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "file.separator"

    const-string v3, "FILE_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->FILE_SEPARATOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 99
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "path.separator"

    const-string v3, "PATH_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->PATH_SEPARATOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 102
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "line.separator"

    const-string v3, "LINE_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->LINE_SEPARATOR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 105
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "user.name"

    const-string v3, "USER_NAME"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->USER_NAME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 108
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "user.home"

    const-string v3, "USER_HOME"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->USER_HOME:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 111
    new-instance v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-string v2, "user.dir"

    const-string v3, "USER_DIR"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->USER_DIR:Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    .line 26
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    filled-new-array/range {v0 .. v27}, [Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->$VALUES:[Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-object p3, p0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/StandardSystemProperty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/base/StandardSystemProperty;
    .locals 1

    .line 26
    sget-object v0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->$VALUES:[Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/base/StandardSystemProperty;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
