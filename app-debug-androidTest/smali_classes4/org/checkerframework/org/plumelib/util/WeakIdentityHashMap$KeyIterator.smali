.class Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;
.super Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<",
        "TK;TV;>.HashIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V
    .locals 0

    .line 753
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;->this$0:Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$HashIterator;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;
    .param p2, "x1"    # Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$1;

    .line 753
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;-><init>(Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 756
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$KeyIterator;->nextEntry()Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/WeakIdentityHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
