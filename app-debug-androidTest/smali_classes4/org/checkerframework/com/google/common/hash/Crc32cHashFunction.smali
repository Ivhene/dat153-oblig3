.class final Lorg/checkerframework/com/google/common/hash/Crc32cHashFunction;
.super Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;
.source "Crc32cHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/hash/Crc32cHashFunction$Crc32cHasher;
    }
.end annotation

.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field static final CRC_32_C:Lorg/checkerframework/com/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/checkerframework/com/google/common/hash/Crc32cHashFunction;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/hash/Crc32cHashFunction;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/hash/Crc32cHashFunction;->CRC_32_C:Lorg/checkerframework/com/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/hash/AbstractHashFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 31
    const/16 v0, 0x20

    return v0
.end method

.method public newHasher()Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 1

    .line 36
    new-instance v0, Lorg/checkerframework/com/google/common/hash/Crc32cHashFunction$Crc32cHasher;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/hash/Crc32cHashFunction$Crc32cHasher;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
