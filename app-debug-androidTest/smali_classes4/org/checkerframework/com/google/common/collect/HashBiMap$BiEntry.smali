.class final Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
.super Lorg/checkerframework/com/google/common/collect/ImmutableEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BiEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final keyHash:I

.field nextInKToVBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextInVToKBucket:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field prevInKeyInsertionOrder:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final valueHash:I


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0
    .param p2, "keyHash"    # I
    .param p4, "valueHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    .line 100
    iput p4, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    .line 101
    return-void
.end method
