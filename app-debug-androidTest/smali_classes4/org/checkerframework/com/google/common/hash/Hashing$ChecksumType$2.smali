.class final enum Lorg/checkerframework/com/google/common/hash/Hashing$ChecksumType$2;
.super Lorg/checkerframework/com/google/common/hash/Hashing$ChecksumType;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/hash/Hashing$ChecksumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "toString"    # Ljava/lang/String;

    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/com/google/common/hash/Hashing$ChecksumType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/checkerframework/com/google/common/hash/Hashing$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/Hashing$ChecksumType$2;->get()Ljava/util/zip/Checksum;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/zip/Checksum;
    .locals 1

    .line 400
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    return-object v0
.end method
