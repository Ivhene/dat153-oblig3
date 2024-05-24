.class public Lannotator/scanner/LocalVariableScanner;
.super Lannotator/scanner/CommonScanner;
.source "LocalVariableScanner.java"


# static fields
.field private static methodNameCounter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static methodNameIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/tools/javac/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private done:Z

.field private index:I

.field private final varName:Ljava/lang/String;

.field private final varTree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/scanner/LocalVariableScanner;->methodNameIndexMap:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/scanner/LocalVariableScanner;->methodNameCounter:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 2
    .param p1, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "varName"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lannotator/scanner/CommonScanner;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lannotator/scanner/LocalVariableScanner;->index:I

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lannotator/scanner/LocalVariableScanner;->done:Z

    .line 72
    iput v0, p0, Lannotator/scanner/LocalVariableScanner;->index:I

    .line 73
    iput-boolean v1, p0, Lannotator/scanner/LocalVariableScanner;->done:Z

    .line 74
    iput-object p1, p0, Lannotator/scanner/LocalVariableScanner;->varTree:Lcom/sun/source/tree/Tree;

    .line 75
    iput-object p2, p0, Lannotator/scanner/LocalVariableScanner;->varName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static addToMethodNameCounter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/Integer;

    .line 140
    sget-object v0, Lannotator/scanner/LocalVariableScanner;->methodNameCounter:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 141
    .local v0, "nameOffsetCounter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    if-nez v0, :cond_0

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 143
    sget-object v1, Lannotator/scanner/LocalVariableScanner;->methodNameCounter:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 147
    .local v1, "listOfOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 149
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public static addToMethodNameIndexMap(Lcom/sun/tools/javac/util/Pair;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 115
    .local p0, "varInfo":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Ljava/lang/String;Lcom/sun/tools/javac/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    sget-object v0, Lannotator/scanner/LocalVariableScanner;->methodNameIndexMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public static getFromMethodNameCounter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "varName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 165
    sget-object v0, Lannotator/scanner/LocalVariableScanner;->methodNameCounter:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getFromMethodNameIndexMap(Lcom/sun/tools/javac/util/Pair;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 127
    .local p0, "varInfo":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Ljava/lang/String;Lcom/sun/tools/javac/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    sget-object v0, Lannotator/scanner/LocalVariableScanner;->methodNameIndexMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static indexOfVarTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;Ljava/lang/String;)I
    .locals 6
    .param p0, "origpath"    # Lcom/sun/source/util/TreePath;
    .param p1, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "varName"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lannotator/scanner/LocalVariableScanner;->findCountingContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 33
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_0

    .line 34
    const/4 v1, -0x1

    return v1

    .line 37
    :cond_0
    new-instance v1, Lannotator/scanner/LocalVariableScanner;

    invoke-direct {v1, p1, p2}, Lannotator/scanner/LocalVariableScanner;-><init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 40
    .local v1, "lvts":Lannotator/scanner/LocalVariableScanner;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Lannotator/scanner/LocalVariableScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    nop

    .line 45
    iget v2, v1, Lannotator/scanner/LocalVariableScanner;->index:I

    return v2

    .line 41
    :catchall_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalVariableScanner: can\'t locate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    const/4 v3, -0x2

    return v3
.end method


# virtual methods
.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/LocalVariableScanner;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 82
    iget-object v0, p0, Lannotator/scanner/LocalVariableScanner;->varName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-boolean v0, p0, Lannotator/scanner/LocalVariableScanner;->done:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 84
    iget v0, p0, Lannotator/scanner/LocalVariableScanner;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lannotator/scanner/LocalVariableScanner;->index:I

    .line 86
    :cond_0
    iget-object v0, p0, Lannotator/scanner/LocalVariableScanner;->varTree:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_1

    .line 87
    iput-boolean v1, p0, Lannotator/scanner/LocalVariableScanner;->done:Z

    .line 90
    :cond_1
    return-object p2
.end method
