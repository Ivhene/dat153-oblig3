.class public Lorg/checkerframework/javacutil/trees/TreeParser;
.super Ljava/lang/Object;
.source "TreeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/javacutil/trees/TreeParser$ParseError;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DELIMS:Ljava/lang/String; = ".[](),"

.field private static final SENTINEL:Ljava/lang/String; = ""


# instance fields
.field private final maker:Lcom/sun/tools/javac/tree/TreeMaker;

.field private final names:Lcom/sun/tools/javac/util/Names;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 35
    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 49
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 50
    invoke-static {v0}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->names:Lcom/sun/tools/javac/util/Names;

    .line 51
    return-void
.end method

.method private fromToken(Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .line 81
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    return-object v0

    .line 91
    :cond_2
    const/4 v0, 0x0

    .line 93
    .local v0, "value":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 98
    goto :goto_0

    .line 97
    :catch_1
    move-exception v2

    .line 100
    .end local v1    # "e2":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_3

    .line 101
    iget-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v1

    return-object v1

    .line 100
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private nextToken(Ljava/util/StringTokenizer;)Ljava/lang/String;
    .locals 1
    .param p1, "tokenizer"    # Ljava/util/StringTokenizer;

    .line 75
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private parseExpression(Ljava/util/StringTokenizer;Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;
    .locals 7
    .param p1, "tokenizer"    # Ljava/util/StringTokenizer;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/StringTokenizer;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p2}, Lorg/checkerframework/javacutil/trees/TreeParser;->fromToken(Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 114
    .local v0, "tree":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :goto_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 115
    invoke-direct {p0, p1}, Lorg/checkerframework/javacutil/trees/TreeParser;->nextToken(Ljava/util/StringTokenizer;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "delim":Ljava/lang/String;
    move-object p2, v1

    .line 117
    const-string v2, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lorg/checkerframework/javacutil/trees/TreeParser;->nextToken(Ljava/util/StringTokenizer;)Ljava/lang/String;

    move-result-object p2

    .line 119
    iget-object v2, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v3, p2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    goto/16 :goto_2

    .line 120
    :cond_0
    const-string v2, "("

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Unexpected token: "

    if-eqz v2, :cond_4

    .line 121
    invoke-direct {p0, p1}, Lorg/checkerframework/javacutil/trees/TreeParser;->nextToken(Ljava/util/StringTokenizer;)Ljava/lang/String;

    move-result-object p2

    .line 122
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 123
    .local v2, "args":Lcom/sun/tools/javac/util/ListBuffer;, "Lcom/sun/tools/javac/util/ListBuffer<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    :goto_1
    const-string v4, ")"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/trees/TreeParser;->parseExpression(Ljava/util/StringTokenizer;Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v4

    .line 125
    .local v4, "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;>;"
    iget-object v5, v4, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 126
    .local v5, "arg":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    iget-object v6, v4, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    move-object p2, v6

    check-cast p2, Ljava/lang/String;

    .line 127
    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 128
    const-string v6, ","

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    invoke-direct {p0, p1}, Lorg/checkerframework/javacutil/trees/TreeParser;->nextToken(Ljava/util/StringTokenizer;)Ljava/lang/String;

    move-result-object p2

    .line 131
    .end local v4    # "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;>;"
    .end local v5    # "arg":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :cond_1
    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    iget-object v3, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 135
    .end local v2    # "args":Lcom/sun/tools/javac/util/ListBuffer;, "Lcom/sun/tools/javac/util/ListBuffer<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    goto :goto_2

    .line 133
    .restart local v2    # "args":Lcom/sun/tools/javac/util/ListBuffer;, "Lcom/sun/tools/javac/util/ListBuffer<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 135
    .end local v2    # "args":Lcom/sun/tools/javac/util/ListBuffer;, "Lcom/sun/tools/javac/util/ListBuffer<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    :cond_4
    const-string v2, "["

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 136
    invoke-direct {p0, p1}, Lorg/checkerframework/javacutil/trees/TreeParser;->nextToken(Ljava/util/StringTokenizer;)Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/trees/TreeParser;->parseExpression(Ljava/util/StringTokenizer;Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    .line 138
    .local v2, "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;>;"
    iget-object v4, v2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 139
    .local v4, "index":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    iget-object v5, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    move-object p2, v5

    check-cast p2, Ljava/lang/String;

    .line 140
    const-string v5, "]"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    iget-object v3, p0, Lorg/checkerframework/javacutil/trees/TreeParser;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Indexed(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v0

    .line 142
    .end local v2    # "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;>;"
    .end local v4    # "index":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    nop

    .line 145
    :goto_2
    if-eqz p1, :cond_5

    .line 146
    .end local v1    # "delim":Ljava/lang/String;
    goto/16 :goto_0

    .line 145
    .restart local v1    # "delim":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "@AssumeAssertion(nullness): side effects"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 140
    .restart local v2    # "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;>;"
    .restart local v4    # "index":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :cond_6
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 143
    .end local v2    # "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;>;"
    .end local v4    # "index":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :cond_7
    invoke-static {v0, p2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    return-object v2

    .line 148
    .end local v1    # "delim":Ljava/lang/String;
    :cond_8
    invoke-static {v0, p2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public parseTree(Ljava/lang/String;)Lcom/sun/source/tree/ExpressionTree;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ".[](),"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "token":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/javacutil/trees/TreeParser;->parseExpression(Ljava/util/StringTokenizer;Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    iget-object v2, v2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const/4 v0, 0x0

    .line 69
    const/4 v1, 0x0

    .line 64
    return-object v2

    .line 68
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Lorg/checkerframework/javacutil/trees/TreeParser$ParseError;

    invoke-direct {v3, v2}, Lorg/checkerframework/javacutil/trees/TreeParser$ParseError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v1    # "token":Ljava/lang/String;
    .end local p1    # "s":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v1    # "token":Ljava/lang/String;
    .restart local p1    # "s":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 69
    const/4 v1, 0x0

    throw v2
.end method
