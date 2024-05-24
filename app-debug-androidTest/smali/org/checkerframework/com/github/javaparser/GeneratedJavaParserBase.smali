.class abstract Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;
.super Ljava/lang/Object;
.source "GeneratedJavaParserBase.java"


# instance fields
.field problems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;"
        }
    .end annotation
.end field

.field storeTokens:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    return-void
.end method

.method private makeMessageForParseException(Lorg/checkerframework/com/github/javaparser/ParseException;)Ljava/lang/String;
    .locals 11
    .param p1, "exception"    # Lorg/checkerframework/com/github/javaparser/ParseException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse error. Found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v1, "expected":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 310
    .local v2, "maxExpectedTokenSequenceLength":I
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 311
    .local v3, "sortedOptions":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->expectedTokenSequences:[[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 312
    iget-object v5, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->expectedTokenSequences:[[I

    aget-object v5, v5, v4

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 313
    iget-object v5, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->expectedTokenSequences:[[I

    aget-object v5, v5, v4

    array-length v2, v5

    .line 315
    :cond_0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v6, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v4

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 316
    iget-object v6, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->tokenImage:[Ljava/lang/String;

    iget-object v7, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->expectedTokenSequences:[[I

    aget-object v7, v7, v4

    aget v7, v7, v5

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 311
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 320
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " "

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 321
    .local v5, "option":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .end local v5    # "option":Ljava/lang/String;
    goto :goto_2

    .line 324
    :cond_3
    iget-object v4, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->currentToken:Lorg/checkerframework/com/github/javaparser/Token;

    iget-object v4, v4, Lorg/checkerframework/com/github/javaparser/Token;->next:Lorg/checkerframework/com/github/javaparser/Token;

    .line 325
    .local v4, "token":Lorg/checkerframework/com/github/javaparser/Token;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_7

    .line 326
    iget-object v7, v4, Lorg/checkerframework/com/github/javaparser/Token;->image:Ljava/lang/String;

    .line 327
    .local v7, "tokenText":Ljava/lang/String;
    invoke-static {v7}, Lorg/checkerframework/com/github/javaparser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "escapedTokenText":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 329
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_4
    iget v9, v4, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    if-nez v9, :cond_5

    .line 332
    iget-object v6, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->tokenImage:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    goto :goto_5

    .line 335
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 336
    iget-object v9, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->tokenImage:[Ljava/lang/String;

    iget v10, v4, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    aget-object v9, v9, v10

    .line 337
    .local v9, "image":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 338
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 340
    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 341
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 342
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 343
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :goto_4
    iget-object v4, v4, Lorg/checkerframework/com/github/javaparser/Token;->next:Lorg/checkerframework/com/github/javaparser/Token;

    .line 325
    .end local v7    # "tokenText":Ljava/lang/String;
    .end local v8    # "escapedTokenText":Ljava/lang/String;
    .end local v9    # "image":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 348
    .end local v5    # "i":I
    :cond_7
    :goto_5
    iget-object v5, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->expectedTokenSequences:[[I

    array-length v5, v5

    if-eqz v5, :cond_9

    .line 349
    iget-object v5, p1, Lorg/checkerframework/com/github/javaparser/ParseException;->expectedTokenSequences:[[I

    array-length v5, v5

    .line 350
    .local v5, "numExpectedTokens":I
    const-string v6, ", expected"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v5, v7, :cond_8

    const-string v7, ""

    goto :goto_6

    :cond_8
    const-string v7, " one of "

    .line 351
    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 352
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .end local v5    # "numExpectedTokens":I
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private propagateRangeGrowthOnRight(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "endNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "endNode"
        }
    .end annotation

    .line 243
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 250
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->range(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setTokenRange(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method abstract ReInit(Lorg/checkerframework/com/github/javaparser/Provider;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation
.end method

.method add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 230
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 231
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object p1, v0

    .line 233
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object p1
.end method

.method add(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;TT;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation

    .line 198
    .local p1, "list":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TT;>;"
    .local p2, "obj":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TT;"
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object p1, v0

    .line 201
    :cond_0
    invoke-virtual {p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 202
    return-object p1
.end method

.method addProblem(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/Problem;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->tokenRange()Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/checkerframework/com/github/javaparser/Problem;-><init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method addWhenNotNull(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;TT;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation

    .line 209
    .local p1, "list":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TT;>;"
    .local p2, "obj":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TT;"
    if-nez p2, :cond_0

    .line 210
    return-object p1

    .line 212
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->add(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    return-object v0
.end method

.method emptyList()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    return-object v0
.end method

.method generateLambda(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 13
    .param p1, "ret"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "lambdaBody"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ret",
            "lambdaBody"
        }
    .end annotation

    .line 258
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 259
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    .line 260
    .local v0, "inner":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    .line 261
    .local v2, "id":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v11}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v12, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/checkerframework/com/github/javaparser/TokenRange;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;-><init>()V

    const/4 v8, 0x0

    new-instance v9, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v9}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v3, v12

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;ZLorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    invoke-virtual {p0, v11, v12}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->add(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 262
    .local v1, "params":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->range(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v1, p2, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V

    move-object p1, v3

    .line 263
    .end local v0    # "inner":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .end local v1    # "params":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    .end local v2    # "id":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    if-eqz v0, :cond_1

    .line 264
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    .line 265
    .local v0, "id":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    new-instance v10, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v10}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;-><init>()V

    const/4 v7, 0x0

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v2, v11

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;ZLorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    invoke-virtual {p0, v10, v11}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->add(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 266
    .restart local v1    # "params":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->range(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, p2, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V

    move-object p1, v2

    .line 267
    .end local v0    # "id":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .end local v1    # "params":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    if-eqz v0, :cond_2

    .line 268
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    invoke-virtual {v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    .line 269
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->propagateRangeGrowthOnRight(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    goto :goto_0

    .line 270
    :cond_2
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    if-eqz v0, :cond_3

    .line 271
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 272
    .local v0, "castExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->generateLambda(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    .line 273
    .local v1, "inner":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 274
    .end local v0    # "castExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    .end local v1    # "inner":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    goto :goto_0

    .line 275
    :cond_3
    const-string v0, "Failed to parse lambda expression! Please create an issue at https://github.com/javaparser/javaparser/issues"

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->addProblem(Ljava/lang/String;)V

    .line 277
    :goto_0
    return-object p1
.end method

.method getCommentsCollection()Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->getCommentsCollection()Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    move-result-object v0

    return-object v0
.end method

.method abstract getNextToken()Lorg/checkerframework/com/github/javaparser/Token;
.end method

.method abstract getTokenSource()Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;
.end method

.method public getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->getTokens()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method juggleArrayCreation(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 6
    .param p1, "range"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p3, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p6, "arrayInitializerExpr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "range",
            "levelRanges",
            "type",
            "dimensions",
            "arrayAnnotations",
            "arrayInitializerExpr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;>;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;"
        }
    .end annotation

    .line 284
    .local p2, "levelRanges":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/TokenRange;>;"
    .local p4, "dimensions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .local p5, "arrayAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 286
    .local v0, "levels":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 287
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p4, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2, v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    invoke-direct {v1, p1, p3, v0, p6}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    return-object v1
.end method

.method juggleArrayType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 5
    .param p1, "partialType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialType",
            "additionalBrackets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;"
        }
    .end annotation

    .line 296
    .local p2, "additionalBrackets":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->unwrapArrayTypes(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/utils/Pair;

    move-result-object v0

    .line 297
    .local v0, "partialParts":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;>;>;"
    iget-object v1, v0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 298
    .local v1, "elementType":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    iget-object v2, v0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 299
    .local v2, "leftMostBrackets":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/List;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->wrapInArrayTypes(Lorg/checkerframework/com/github/javaparser/ast/type/Type;[Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->clone()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    return-object v3
.end method

.method synthetic lambda$propagateRangeGrowthOnRight$0$org-checkerframework-com-github-javaparser-GeneratedJavaParserBase(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "endNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p3, "nodeParent"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "endNode",
            "nodeParent"
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getEnd()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getEnd()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 246
    .local v0, "isChildOnTheRightBorderOfParent":Z
    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, p3, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->propagateRangeGrowthOnRight(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 249
    :cond_0
    return-void
.end method

.method nodeListBegin(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "*>;)",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;"
        }
    .end annotation

    .line 147
    .local p1, "l":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<*>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    return-object v0

    .line 148
    :cond_1
    :goto_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaToken;->INVALID:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-object v0
.end method

.method orIfInvalid(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 1
    .param p1, "firstChoice"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p2, "secondChoice"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstChoice",
            "secondChoice"
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_2

    .line 123
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->invalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    return-object p2

    .line 126
    :cond_1
    :goto_0
    return-object p1

    .line 130
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method orIfInvalid(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 1
    .param p1, "firstChoice"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p2, "secondChoice"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstChoice",
            "secondChoice"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->orIfInvalid(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method prepend(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;TT;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation

    .line 219
    .local p1, "list":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TT;>;"
    .local p2, "obj":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TT;"
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object p1, v0

    .line 222
    :cond_0
    invoke-virtual {p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addFirst(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 223
    return-object p1
.end method

.method range(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 1
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p2, "end"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method range(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 2
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p2, "end"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getEnd()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-object v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method range(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/JavaToken;)Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 2
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "end"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method range(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 3
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "end"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getEnd()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-object v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method recover(ILorg/checkerframework/com/github/javaparser/ParseException;)Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 7
    .param p1, "recoveryTokenType"    # I
    .param p2, "p"    # Lorg/checkerframework/com/github/javaparser/ParseException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recoveryTokenType",
            "p"
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "begin":Lorg/checkerframework/com/github/javaparser/JavaToken;
    iget-object v1, p2, Lorg/checkerframework/com/github/javaparser/ParseException;->currentToken:Lorg/checkerframework/com/github/javaparser/Token;

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->token()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->getNextToken()Lorg/checkerframework/com/github/javaparser/Token;

    move-result-object v1

    .line 174
    .local v1, "t":Lorg/checkerframework/com/github/javaparser/Token;
    iget v2, v1, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    if-eq v2, p1, :cond_1

    iget v2, v1, Lorg/checkerframework/com/github/javaparser/Token;->kind:I

    if-nez v2, :cond_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->token()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v2

    .line 178
    .local v2, "end":Lorg/checkerframework/com/github/javaparser/JavaToken;
    const/4 v3, 0x0

    .line 179
    .local v3, "tokenRange":Lorg/checkerframework/com/github/javaparser/TokenRange;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 180
    invoke-virtual {p0, v0, v2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->range(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v3

    .line 183
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/Problem;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->makeMessageForParseException(Lorg/checkerframework/com/github/javaparser/ParseException;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3, p2}, Lorg/checkerframework/com/github/javaparser/Problem;-><init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-object v3
.end method

.method reset(Lorg/checkerframework/com/github/javaparser/Provider;)V
    .locals 1
    .param p1, "provider"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->ReInit(Lorg/checkerframework/com/github/javaparser/Provider;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->reset()V

    .line 48
    return-void
.end method

.method scopeToName(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 5
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scope"
        }
    .end annotation

    .line 361
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->isNameExpr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->asNameExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    .line 363
    .local v0, "simpleName":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    return-object v1

    .line 365
    .end local v0    # "simpleName":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->isFieldAccessExpr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->asFieldAccessExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object v0

    .line 367
    .local v0, "fieldAccessExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->scopeToName(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    return-object v1

    .line 370
    .end local v0    # "fieldAccessExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected expression type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setStoreTokens(Z)V
    .locals 1
    .param p1, "storeTokens"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeTokens"
        }
    .end annotation

    .line 160
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    .line 161
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->setStoreTokens(Z)V

    .line 162
    return-void
.end method

.method setTokenKind(I)V
    .locals 1
    .param p1, "newKind"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKind"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->token()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->setKind(I)V

    .line 156
    return-void
.end method

.method setYieldSupported()V
    .locals 1

    .line 390
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->getTokenSource()Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserTokenManager;->setYieldSupported()V

    .line 391
    return-void
.end method

.method abstract token()Lorg/checkerframework/com/github/javaparser/JavaToken;
.end method

.method tokenRange()Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 3

    .line 72
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->storeTokens:Z

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->token()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->token()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method unTripleQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 378
    const/4 v0, 0x3

    .line 380
    .local v0, "start":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 381
    add-int/lit8 v0, v0, 0x1

    .line 383
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 384
    add-int/lit8 v0, v0, 0x1

    .line 386
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
