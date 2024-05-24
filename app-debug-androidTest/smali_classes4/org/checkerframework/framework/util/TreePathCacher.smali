.class public Lorg/checkerframework/framework/util/TreePathCacher;
.super Lcom/sun/source/util/TreeScanner;
.source "TreePathCacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/TreePathCacher$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreeScanner<",
        "Lcom/sun/source/util/TreePath;",
        "Lcom/sun/source/tree/Tree;",
        ">;"
    }
.end annotation


# instance fields
.field private final foundPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lcom/sun/source/util/TreePath;",
            ">;"
        }
    .end annotation
.end field

.field private path:Lcom/sun/source/util/TreePath;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/sun/source/util/TreeScanner;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addPath(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)V
    .locals 1
    .param p1, "target"    # Lcom/sun/source/tree/Tree;
    .param p2, "path"    # Lcom/sun/source/util/TreePath;

    .line 40
    iget-object v0, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public clear()V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    return-void
.end method

.method public getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;
    .locals 3
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "target"    # Lcom/sun/source/tree/Tree;

    .line 55
    iget-object v0, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/util/TreePath;

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/sun/source/util/TreePath;

    invoke-direct {v0, p1}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 60
    .local v0, "path":Lcom/sun/source/util/TreePath;
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 61
    return-object v0

    .line 65
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/util/TreePathCacher;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/checkerframework/framework/util/TreePathCacher$Result; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    nop

    .line 70
    iget-object v1, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object v2

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "result":Lorg/checkerframework/framework/util/TreePathCacher$Result;
    iget-object v2, v1, Lorg/checkerframework/framework/util/TreePathCacher$Result;->path:Lcom/sun/source/util/TreePath;

    return-object v2
.end method

.method public isCached(Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "target"    # Lcom/sun/source/tree/Tree;

    .line 32
    iget-object v0, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public scan(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "target"    # Lcom/sun/source/tree/Tree;

    .line 90
    iget-object v0, p0, Lorg/checkerframework/framework/util/TreePathCacher;->path:Lcom/sun/source/util/TreePath;

    .line 91
    .local v0, "prev":Lcom/sun/source/util/TreePath;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/sun/source/util/TreePath;

    iget-object v2, p0, Lorg/checkerframework/framework/util/TreePathCacher;->path:Lcom/sun/source/util/TreePath;

    invoke-direct {v1, v2, p1}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)V

    .line 93
    .local v1, "current":Lcom/sun/source/util/TreePath;
    iget-object v2, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iput-object v1, p0, Lorg/checkerframework/framework/util/TreePathCacher;->path:Lcom/sun/source/util/TreePath;

    .line 95
    .end local v1    # "current":Lcom/sun/source/util/TreePath;
    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/TreePathCacher;->foundPaths:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/util/TreePath;

    iput-object v1, p0, Lorg/checkerframework/framework/util/TreePathCacher;->path:Lcom/sun/source/util/TreePath;

    .line 99
    :goto_0
    if-eq p1, p2, :cond_1

    .line 103
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/util/TreePath;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iput-object v0, p0, Lorg/checkerframework/framework/util/TreePathCacher;->path:Lcom/sun/source/util/TreePath;

    .line 103
    return-object v1

    .line 105
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/checkerframework/framework/util/TreePathCacher;->path:Lcom/sun/source/util/TreePath;

    throw v1

    .line 100
    :cond_1
    new-instance v1, Lorg/checkerframework/framework/util/TreePathCacher$Result;

    iget-object v2, p0, Lorg/checkerframework/framework/util/TreePathCacher;->path:Lcom/sun/source/util/TreePath;

    invoke-direct {v1, v2}, Lorg/checkerframework/framework/util/TreePathCacher$Result;-><init>(Lcom/sun/source/util/TreePath;)V

    throw v1
.end method

.method public bridge synthetic scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/TreePathCacher;->scan(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object p1

    return-object p1
.end method
