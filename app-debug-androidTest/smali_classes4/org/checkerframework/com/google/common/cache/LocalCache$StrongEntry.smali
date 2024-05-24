.class Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrongEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final next:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 1
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 943
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 958
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->unset()Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;->valueReference:Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;

    .line 944
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    .line 945
    iput p2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;->hash:I

    .line 946
    iput-object p3, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;->next:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 947
    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .line 972
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 951
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 977
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;->next:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getValueReference()Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 962
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;->valueReference:Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 967
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    .local p1, "valueReference":Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;->valueReference:Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;

    .line 968
    return-void
.end method
