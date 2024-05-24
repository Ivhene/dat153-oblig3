.class public Lnet/bytebuddy/utility/OpenedClassReader;
.super Ljava/lang/Object;
.source "OpenedClassReader.java"


# static fields
.field public static final ASM_API:I

.field public static final EXPERIMENTAL:Z

.field public static final EXPERIMENTAL_PROPERTY:Ljava/lang/String; = "net.bytebuddy.experimental"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    :try_start_0
    new-instance v0, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v1, "net.bytebuddy.experimental"

    invoke-direct {v0, v1}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v0, "experimental":Z
    goto :goto_0

    .line 52
    .end local v0    # "experimental":Z
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    move v0, v1

    .line 55
    .local v0, "experimental":Z
    :goto_0
    sput-boolean v0, Lnet/bytebuddy/utility/OpenedClassReader;->EXPERIMENTAL:Z

    .line 56
    const/high16 v1, 0x90000

    sput v1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    .line 57
    .end local v0    # "experimental":Z
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of([B)Lnet/bytebuddy/jar/asm/ClassReader;
    .locals 5
    .param p0, "binaryRepresentation"    # [B

    .line 73
    sget-boolean v0, Lnet/bytebuddy/utility/OpenedClassReader;->EXPERIMENTAL:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-static {p0}, Lnet/bytebuddy/ClassFileVersion;->ofClassFile([B)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    .line 75
    .local v0, "classFileVersion":Lnet/bytebuddy/ClassFileVersion;
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isGreaterThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v1

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, p0, v2

    .line 77
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, p0, v3

    .line 78
    new-instance v1, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v1, p0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    .line 79
    .local v1, "classReader":Lnet/bytebuddy/jar/asm/ClassReader;
    invoke-virtual {v0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v4

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    .line 80
    invoke-virtual {v0}, Lnet/bytebuddy/ClassFileVersion;->getMajorVersion()S

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p0, v3

    .line 81
    return-object v1

    .line 83
    .end local v1    # "classReader":Lnet/bytebuddy/jar/asm/ClassReader;
    :cond_0
    new-instance v1, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v1, p0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    return-object v1

    .line 86
    .end local v0    # "classFileVersion":Lnet/bytebuddy/ClassFileVersion;
    :cond_1
    new-instance v0, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    return-object v0
.end method
