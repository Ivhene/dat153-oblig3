.class public Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;
.super Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
.source "WeakConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithInlinedExpunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 261
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;-><init>(Z)V

    .line 262
    return-void
.end method


# virtual methods
.method public approximateSize()I
    .locals 1

    .line 296
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;->expungeStaleEntries()V

    .line 297
    invoke-super {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->approximateSize()I

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 272
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;->expungeStaleEntries()V

    .line 273
    invoke-super {p0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;->expungeStaleEntries()V

    .line 267
    invoke-super {p0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;->expungeStaleEntries()V

    .line 291
    invoke-super {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;->expungeStaleEntries()V

    .line 279
    invoke-super {p0, p1, p2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;->expungeStaleEntries()V

    .line 285
    invoke-super {p0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
