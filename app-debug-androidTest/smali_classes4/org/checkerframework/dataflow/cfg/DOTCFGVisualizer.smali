.class public Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;
.super Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;
.source "DOTCFGVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "TA;>;S::",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;T::",
        "Lorg/checkerframework/dataflow/analysis/TransferFunction<",
        "TA;TS;>;>",
        "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<",
        "TA;TS;TT;>;"
    }
.end annotation


# static fields
.field protected static final leftJustifiedTerminator:Ljava/lang/String; = "\\l"


# instance fields
.field protected checkerName:Ljava/lang/String;

.field protected generated:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected outDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;-><init>()V

    return-void
.end method

.method private escapeDoubleQuotes(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 289
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->escapeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private escapeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 279
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    const-string v0, "\""

    const-string v1, "\\\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addEdge(JJLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sId"    # J
    .param p3, "eId"    # J
    .param p5, "flowRule"    # Ljava/lang/String;

    .line 124
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [label=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"];"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected dotOutputFileName(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;)Ljava/lang/String;
    .locals 8
    .param p1, "ast"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    .line 149
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "srcLoc":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->outDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "outFile":Ljava/lang/StringBuilder;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->ARBITRARY_CODE:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    const-string v4, ">"

    const-string v5, "<"

    if-ne v2, v3, :cond_0

    .line 155
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;

    .line 156
    .local v2, "cfgStatement":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "clsName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v6, "-initializer-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v6, "::initializer::"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;->getCode()Lcom/sun/source/tree/Tree;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree;

    iget v6, v6, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .end local v2    # "cfgStatement":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;
    .end local v3    # "clsName":Ljava/lang/String;
    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v2, v3, :cond_2

    .line 167
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    .line 168
    .local v2, "cfgMethod":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .restart local v3    # "clsName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getMethod()Lcom/sun/source/tree/MethodTree;

    move-result-object v6

    invoke-interface {v6}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "methodName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v7, "::"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getMethod()Lcom/sun/source/tree/MethodTree;

    move-result-object v7

    invoke-interface {v7}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    const-string v7, ")::"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getMethod()Lcom/sun/source/tree/MethodTree;

    move-result-object v7

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree;

    iget v7, v7, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .end local v2    # "cfgMethod":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    .end local v3    # "clsName":Ljava/lang/String;
    .end local v6    # "methodName":Ljava/lang/String;
    nop

    .line 186
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->checkerName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->checkerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    const-string v2, ".dot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "outFileName":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->generated:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-object v2

    .line 184
    .end local v2    # "outFileName":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected AST kind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public init(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->init(Ljava/util/Map;)V

    .line 49
    const-string v0, "outdir"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->outDir:Ljava/lang/String;

    .line 50
    if-eqz v0, :cond_0

    .line 54
    const-string v0, "checkerName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->checkerName:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->generated:Ljava/util/Map;

    .line 56
    return-void

    .line 51
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "outDir should never be null, provide it in args when calling DOTCFGVisualizer.init(args)."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdown()V
    .locals 5

    .line 310
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->outDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/methods.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 311
    .local v0, "fstream":Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 312
    .local v1, "out":Ljava/io/BufferedWriter;
    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->generated:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 313
    .local v3, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 314
    const-string v4, "\t"

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 315
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 317
    nop

    .end local v3    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0    # "fstream":Ljava/io/FileWriter;
    .end local v1    # "out":Ljava/io/BufferedWriter;
    nop

    .line 324
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating methods.txt file in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->outDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; ensure the path is valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public visualize(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/util/Map;
    .locals 6
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .param p2, "entry"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p3, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->visualizeGraph(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "dotGraph":Ljava/lang/String;
    iget-object v1, p1, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->underlyingAST:Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->dotOutputFileName(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "dotFileName":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "fStream":Ljava/io/FileWriter;
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 68
    .local v3, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2    # "fStream":Ljava/io/FileWriter;
    .end local v3    # "out":Ljava/io/BufferedWriter;
    nop

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v2, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "dotFileName"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object v2

    .line 70
    .end local v2    # "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating dot file (is the path valid?): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method public visualizeBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 1
    .param p1, "bb"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    const-string v0, "\\l"

    invoke-super {p0, p1, p2, v0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeBlockHelper(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeBlockNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v0, "sbBlockNode":Ljava/lang/StringBuilder;
    nop

    .line 204
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->escapeDoubleQuotes(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string v2, "   [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->getNodeSimpleName(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    .line 210
    .local v1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    if-eqz v1, :cond_0

    .line 211
    const-string v2, "    > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->escapeDoubleQuotes(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .end local v1    # "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visualizeBlockTransferInput(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 1
    .param p1, "bb"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    const-string v0, "\\l"

    invoke-super {p0, p1, p2, v0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeBlockTransferInputHelper(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected visualizeGraphFooter()Ljava/lang/String;
    .locals 2

    .line 333
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected visualizeGraphHeader()Ljava/lang/String;
    .locals 2

    .line 328
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digraph {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeNodes(Ljava/util/Set;Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 8
    .param p2, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p1, "blocks":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    .local p3, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "sbDotNodes":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0, p2}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->getProcessOrder(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)Ljava/util/IdentityHashMap;

    move-result-object v1

    .line 90
    .local v1, "processOrder":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 91
    .local v3, "v":Lorg/checkerframework/dataflow/cfg/block/Block;
    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lorg/checkerframework/dataflow/cfg/block/Block;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {v3}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v4, v5, :cond_0

    .line 93
    const-string v4, "shape=polygon sides=8 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 94
    :cond_0
    invoke-interface {v3}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->SPECIAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v4, v5, :cond_1

    .line 95
    const-string v4, "shape=oval "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :cond_1
    const-string v4, "shape=rectangle "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :goto_1
    const-string v4, "label=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-boolean v4, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->verbose:Z

    if-eqz v4, :cond_2

    .line 101
    nop

    .line 102
    invoke-virtual {v1, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->getProcessOrderSimpleString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    const-string v5, "\\l"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_2
    invoke-virtual {p0, v3, p3}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->visualizeBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "strBlock":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "\"];"

    if-nez v5, :cond_4

    .line 107
    invoke-interface {v3}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v5

    sget-object v7, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v5, v7, :cond_3

    .line 109
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 113
    :cond_3
    const-string v5, "?? empty ??\"];"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 116
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .end local v3    # "v":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v4    # "strBlock":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 119
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public visualizeSpecialBlock(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;)Ljava/lang/String;
    .locals 1
    .param p1, "sbb"    # Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    .line 134
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    const-string v0, ""

    invoke-super {p0, p1, v0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeSpecialBlockHelper(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreArrayVal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "arrayValue"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    invoke-direct {p0, p2}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->escapeDoubleQuotes(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method public visualizeStoreClassVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "className"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    invoke-direct {p0, p2}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->escapeDoubleQuotes(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method public visualizeStoreFieldVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldAccess"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    invoke-direct {p0, p2}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->escapeDoubleQuotes(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    return-object v0
.end method

.method public visualizeStoreFooter()Ljava/lang/String;
    .locals 1

    .line 299
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    const-string v0, ")"

    return-object v0
.end method

.method public visualizeStoreHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "classCanonicalName"    # Ljava/lang/String;

    .line 294
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreKeyVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 269
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visualizeStoreLocalVar(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "localVar"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    invoke-direct {p0, p2}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->escapeDoubleQuotes(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    return-object v0
.end method

.method public visualizeStoreMethodVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .param p1, "methodCall"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;",
            "TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p2, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;->escapeDoubleQuotes(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    return-object v0
.end method

.method public visualizeStoreThisVal(Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer<TA;TS;TT;>;"
    .local p1, "value":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  this > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
