.class abstract Lcom/google/common/collect/HashBiMap$View;
.super Ljava/util/AbstractSet;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final biMap:Lcom/google/common/collect/HashBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 670
    .local p0, "this":Lcom/google/common/collect/HashBiMap$View;, "Lcom/google/common/collect/HashBiMap$View<TK;TV;TT;>;"
    .local p1, "biMap":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 671
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$View;->biMap:Lcom/google/common/collect/HashBiMap;

    .line 672
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 732
    .local p0, "this":Lcom/google/common/collect/HashBiMap$View;, "Lcom/google/common/collect/HashBiMap$View<TK;TV;TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$View;->biMap:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->clear()V

    .line 733
    return-void
.end method

.method abstract forEntry(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 678
    .local p0, "this":Lcom/google/common/collect/HashBiMap$View;, "Lcom/google/common/collect/HashBiMap$View<TK;TV;TT;>;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$View$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$View$1;-><init>(Lcom/google/common/collect/HashBiMap$View;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 727
    .local p0, "this":Lcom/google/common/collect/HashBiMap$View;, "Lcom/google/common/collect/HashBiMap$View<TK;TV;TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$View;->biMap:Lcom/google/common/collect/HashBiMap;

    iget v0, v0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method
