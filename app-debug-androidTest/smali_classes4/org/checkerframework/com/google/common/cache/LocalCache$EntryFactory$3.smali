.class final enum Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$3;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 473
    .local p1, "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "original":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p3, "newNext":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 474
    .local v0, "newEntry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, p2, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryFactory$3;->copyWriteEntry(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 475
    return-object v0
.end method

.method newEntry(Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;TK;I",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 467
    .local p1, "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;

    invoke-direct {v0, p2, p3, p4}, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    return-object v0
.end method