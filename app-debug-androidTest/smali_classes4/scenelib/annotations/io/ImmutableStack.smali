.class Lscenelib/annotations/io/ImmutableStack;
.super Ljava/lang/Object;
.source "ASTPath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private rest:Lscenelib/annotations/io/ImmutableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/io/ImmutableStack<",
            "TE;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1404
    .local p0, "this":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1400
    const/4 v0, 0x0

    iput-object v0, p0, Lscenelib/annotations/io/ImmutableStack;->elem:Ljava/lang/Object;

    .line 1401
    iput-object v0, p0, Lscenelib/annotations/io/ImmutableStack;->rest:Lscenelib/annotations/io/ImmutableStack;

    .line 1402
    const/4 v0, 0x0

    iput v0, p0, Lscenelib/annotations/io/ImmutableStack;->size:I

    .line 1405
    return-void
.end method

.method private static extend(Ljava/lang/Object;Lscenelib/annotations/io/ImmutableStack;)Lscenelib/annotations/io/ImmutableStack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Lscenelib/annotations/io/ImmutableStack<",
            "TT;>;>(TT;TS;)TS;"
        }
    .end annotation

    .line 1410
    .local p0, "el":Ljava/lang/Object;, "TT;"
    .local p1, "s0":Lscenelib/annotations/io/ImmutableStack;, "TS;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/ImmutableStack;

    .line 1411
    .local v0, "s1":Lscenelib/annotations/io/ImmutableStack;, "TS;"
    move-object v1, v0

    .line 1412
    .local v1, "cs":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TT;>;"
    invoke-virtual {p1}, Lscenelib/annotations/io/ImmutableStack;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lscenelib/annotations/io/ImmutableStack;->size:I

    .line 1413
    iput-object p0, v1, Lscenelib/annotations/io/ImmutableStack;->elem:Ljava/lang/Object;

    .line 1414
    iput-object p1, v1, Lscenelib/annotations/io/ImmutableStack;->rest:Lscenelib/annotations/io/ImmutableStack;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    return-object v0

    .line 1416
    .end local v0    # "s1":Lscenelib/annotations/io/ImmutableStack;, "TS;"
    .end local v1    # "cs":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TT;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 1417
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1447
    .local p0, "this":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    invoke-virtual {p0}, Lscenelib/annotations/io/ImmutableStack;->size()I

    move-result v0

    .line 1449
    .local v0, "n":I
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 1453
    move-object v1, p0

    .line 1454
    .local v1, "s":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-le v0, p1, :cond_0

    invoke-virtual {v1}, Lscenelib/annotations/io/ImmutableStack;->pop()Lscenelib/annotations/io/ImmutableStack;

    move-result-object v1

    goto :goto_0

    .line 1455
    :cond_0
    invoke-virtual {v1}, Lscenelib/annotations/io/ImmutableStack;->peek()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1450
    .end local v1    # "s":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " elements, asked for #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1422
    .local p0, "this":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    iget v0, p0, Lscenelib/annotations/io/ImmutableStack;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1426
    .local p0, "this":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    invoke-virtual {p0}, Lscenelib/annotations/io/ImmutableStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1429
    iget-object v0, p0, Lscenelib/annotations/io/ImmutableStack;->elem:Ljava/lang/Object;

    return-object v0

    .line 1427
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "peek() on empty stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Lscenelib/annotations/io/ImmutableStack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscenelib/annotations/io/ImmutableStack<",
            "TE;>;"
        }
    .end annotation

    .line 1433
    .local p0, "this":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    invoke-virtual {p0}, Lscenelib/annotations/io/ImmutableStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1436
    iget-object v0, p0, Lscenelib/annotations/io/ImmutableStack;->rest:Lscenelib/annotations/io/ImmutableStack;

    return-object v0

    .line 1434
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pop() on empty stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Ljava/lang/Object;)Lscenelib/annotations/io/ImmutableStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lscenelib/annotations/io/ImmutableStack<",
            "TE;>;"
        }
    .end annotation

    .line 1440
    .local p0, "this":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    .local p1, "elem":Ljava/lang/Object;, "TE;"
    invoke-static {p1, p0}, Lscenelib/annotations/io/ImmutableStack;->extend(Ljava/lang/Object;Lscenelib/annotations/io/ImmutableStack;)Lscenelib/annotations/io/ImmutableStack;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1443
    .local p0, "this":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    iget v0, p0, Lscenelib/annotations/io/ImmutableStack;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1459
    .local p0, "this":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    iget v0, p0, Lscenelib/annotations/io/ImmutableStack;->size:I

    if-lez v0, :cond_1

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lscenelib/annotations/io/ImmutableStack;->peek()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1461
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lscenelib/annotations/io/ImmutableStack;->pop()Lscenelib/annotations/io/ImmutableStack;

    move-result-object v1

    .local v1, "stack":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    :goto_0
    invoke-virtual {v1}, Lscenelib/annotations/io/ImmutableStack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1463
    const-string v3, ", "

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lscenelib/annotations/io/ImmutableStack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1462
    invoke-virtual {v1}, Lscenelib/annotations/io/ImmutableStack;->pop()Lscenelib/annotations/io/ImmutableStack;

    move-result-object v1

    goto :goto_0

    .line 1465
    .end local v1    # "stack":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<TE;>;"
    :cond_0
    const-string v1, "["

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1467
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v0, "[]"

    return-object v0
.end method
