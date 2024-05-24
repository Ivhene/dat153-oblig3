.class final Lorg/checkerframework/com/google/common/collect/Maps$13;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Maps;->asEntryToEntryFunction(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Lorg/checkerframework/com/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "Ljava/util/Map$Entry<",
        "TK;TV1;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V
    .locals 0

    .line 1999
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$13;->val$transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1999
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$13;->apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 2002
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV1;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$13;->val$transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->transformEntry(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
