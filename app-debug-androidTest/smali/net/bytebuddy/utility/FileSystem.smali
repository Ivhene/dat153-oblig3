.class public final enum Lnet/bytebuddy/utility/FileSystem;
.super Ljava/lang/Enum;
.source "FileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;,
        Lnet/bytebuddy/utility/FileSystem$Files;,
        Lnet/bytebuddy/utility/FileSystem$Dispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/FileSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/FileSystem;

.field private static final DISPATCHER:Lnet/bytebuddy/utility/FileSystem$Dispatcher;

.field private static final FILES:Lnet/bytebuddy/utility/FileSystem$Files;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/FileSystem;

.field private static final STANDARD_COPY_OPTION:Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lnet/bytebuddy/utility/FileSystem;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/FileSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/FileSystem;->INSTANCE:Lnet/bytebuddy/utility/FileSystem;

    .line 26
    filled-new-array {v0}, [Lnet/bytebuddy/utility/FileSystem;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/utility/FileSystem;->$VALUES:[Lnet/bytebuddy/utility/FileSystem;

    .line 36
    const-class v0, Lnet/bytebuddy/utility/FileSystem$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/FileSystem$Dispatcher;

    sput-object v0, Lnet/bytebuddy/utility/FileSystem;->DISPATCHER:Lnet/bytebuddy/utility/FileSystem$Dispatcher;

    .line 41
    const-class v0, Lnet/bytebuddy/utility/FileSystem$Files;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/FileSystem$Files;

    sput-object v0, Lnet/bytebuddy/utility/FileSystem;->FILES:Lnet/bytebuddy/utility/FileSystem$Files;

    .line 46
    const-class v0, Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;

    sput-object v0, Lnet/bytebuddy/utility/FileSystem;->STANDARD_COPY_OPTION:Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/FileSystem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lnet/bytebuddy/utility/FileSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/FileSystem;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/utility/FileSystem;
    .locals 1

    .line 26
    sget-object v0, Lnet/bytebuddy/utility/FileSystem;->$VALUES:[Lnet/bytebuddy/utility/FileSystem;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/FileSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/FileSystem;

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p1, "source"    # Ljava/io/File;
    .param p2, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    sget-object v0, Lnet/bytebuddy/utility/FileSystem;->STANDARD_COPY_OPTION:Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;->toArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "option":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 58
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 60
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/16 v4, 0x400

    :try_start_1
    new-array v4, v4, [B

    .line 64
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "length":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 65
    invoke-virtual {v2, v4, v3, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    .end local v4    # "buffer":[B
    .end local v6    # "length":I
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    nop

    .line 71
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 72
    nop

    .line 73
    .end local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 68
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 69
    nop

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "option":[Ljava/lang/Object;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "target":Ljava/io/File;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "option":[Ljava/lang/Object;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "target":Ljava/io/File;
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 72
    throw v2

    .line 74
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_1
    const-string v2, "REPLACE_EXISTING"

    invoke-interface {v0, v2}, Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    .line 75
    sget-object v0, Lnet/bytebuddy/utility/FileSystem;->FILES:Lnet/bytebuddy/utility/FileSystem$Files;

    sget-object v2, Lnet/bytebuddy/utility/FileSystem;->DISPATCHER:Lnet/bytebuddy/utility/FileSystem$Dispatcher;

    invoke-interface {v2, p1}, Lnet/bytebuddy/utility/FileSystem$Dispatcher;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p2}, Lnet/bytebuddy/utility/FileSystem$Dispatcher;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2, v1}, Lnet/bytebuddy/utility/FileSystem$Files;->copy(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_1
    return-void
.end method

.method public move(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p1, "source"    # Ljava/io/File;
    .param p2, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    sget-object v0, Lnet/bytebuddy/utility/FileSystem;->STANDARD_COPY_OPTION:Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;->toArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, "option":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 89
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 91
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/16 v4, 0x400

    :try_start_1
    new-array v4, v4, [B

    .line 95
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "length":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 96
    invoke-virtual {v2, v4, v3, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v4    # "buffer":[B
    .end local v6    # "length":I
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    nop

    .line 102
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 103
    nop

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 107
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_1
    goto :goto_1

    .line 99
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 100
    nop

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "option":[Ljava/lang/Object;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "target":Ljava/io/File;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "option":[Ljava/lang/Object;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "target":Ljava/io/File;
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 103
    throw v2

    .line 108
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_2
    const-string v2, "REPLACE_EXISTING"

    invoke-interface {v0, v2}, Lnet/bytebuddy/utility/FileSystem$StandardCopyOption;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    .line 109
    sget-object v0, Lnet/bytebuddy/utility/FileSystem;->FILES:Lnet/bytebuddy/utility/FileSystem$Files;

    sget-object v2, Lnet/bytebuddy/utility/FileSystem;->DISPATCHER:Lnet/bytebuddy/utility/FileSystem$Dispatcher;

    invoke-interface {v2, p1}, Lnet/bytebuddy/utility/FileSystem$Dispatcher;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p2}, Lnet/bytebuddy/utility/FileSystem$Dispatcher;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2, v1}, Lnet/bytebuddy/utility/FileSystem$Files;->move(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_1
    return-void
.end method
