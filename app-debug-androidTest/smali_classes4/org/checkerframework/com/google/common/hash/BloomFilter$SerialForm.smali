.class Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/hash/BloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[J

.field final funnel:Lorg/checkerframework/com/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final numHashFunctions:I

.field final strategy:Lorg/checkerframework/com/google/common/hash/BloomFilter$Strategy;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/hash/BloomFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/hash/BloomFilter<",
            "TT;>;)V"
        }
    .end annotation

    .line 537
    .local p0, "this":Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;, "Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm<TT;>;"
    .local p1, "bf":Lorg/checkerframework/com/google/common/hash/BloomFilter;, "Lorg/checkerframework/com/google/common/hash/BloomFilter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    invoke-static {p1}, Lorg/checkerframework/com/google/common/hash/BloomFilter;->access$000(Lorg/checkerframework/com/google/common/hash/BloomFilter;)Lorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;->data:[J

    .line 539
    invoke-static {p1}, Lorg/checkerframework/com/google/common/hash/BloomFilter;->access$100(Lorg/checkerframework/com/google/common/hash/BloomFilter;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;->numHashFunctions:I

    .line 540
    invoke-static {p1}, Lorg/checkerframework/com/google/common/hash/BloomFilter;->access$200(Lorg/checkerframework/com/google/common/hash/BloomFilter;)Lorg/checkerframework/com/google/common/hash/Funnel;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;->funnel:Lorg/checkerframework/com/google/common/hash/Funnel;

    .line 541
    invoke-static {p1}, Lorg/checkerframework/com/google/common/hash/BloomFilter;->access$300(Lorg/checkerframework/com/google/common/hash/BloomFilter;)Lorg/checkerframework/com/google/common/hash/BloomFilter$Strategy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;->strategy:Lorg/checkerframework/com/google/common/hash/BloomFilter$Strategy;

    .line 542
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 7

    .line 545
    .local p0, "this":Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;, "Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm<TT;>;"
    new-instance v6, Lorg/checkerframework/com/google/common/hash/BloomFilter;

    new-instance v1, Lorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;->data:[J

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;-><init>([J)V

    iget v2, p0, Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;->numHashFunctions:I

    iget-object v3, p0, Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;->funnel:Lorg/checkerframework/com/google/common/hash/Funnel;

    iget-object v4, p0, Lorg/checkerframework/com/google/common/hash/BloomFilter$SerialForm;->strategy:Lorg/checkerframework/com/google/common/hash/BloomFilter$Strategy;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/google/common/hash/BloomFilter;-><init>(Lorg/checkerframework/com/google/common/hash/BloomFilterStrategies$LockFreeBitArray;ILorg/checkerframework/com/google/common/hash/Funnel;Lorg/checkerframework/com/google/common/hash/BloomFilter$Strategy;Lorg/checkerframework/com/google/common/hash/BloomFilter$1;)V

    return-object v6
.end method
