.class Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;
.super Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<",
        "TK;TV;>.HashIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V
    .locals 0

    .line 760
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
    .param p2, "x1"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;

    .line 760
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 760
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 763
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$EntryIterator;->nextEntry()Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    return-object v0
.end method
