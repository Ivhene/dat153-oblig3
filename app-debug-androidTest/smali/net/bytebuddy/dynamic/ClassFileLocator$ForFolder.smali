.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForFolder"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final folder:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "folder"    # Ljava/io/File;

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;->folder:Ljava/io/File;

    .line 1059
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1083
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;->folder:Ljava/io/File;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;->folder:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1065
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;->folder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1066
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1069
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    sget-object v3, Lnet/bytebuddy/utility/StreamDrainer;->DEFAULT:Lnet/bytebuddy/utility/StreamDrainer;

    invoke-virtual {v3, v1}, Lnet/bytebuddy/utility/StreamDrainer;->drain(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1069
    return-object v2

    .line 1071
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1072
    throw v2

    .line 1074
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
