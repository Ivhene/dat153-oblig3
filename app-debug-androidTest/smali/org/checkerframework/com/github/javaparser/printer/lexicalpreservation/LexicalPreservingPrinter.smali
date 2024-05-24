.class public Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;
.super Ljava/lang/Object;
.source "LexicalPreservingPrinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;
    }
.end annotation


# static fields
.field private static final LEXICAL_DIFFERENCE_CALCULATOR:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

.field public static final NODE_TEXT_DATA:Lorg/checkerframework/com/github/javaparser/ast/DataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/DataKey<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            ">;"
        }
    .end annotation
.end field

.field private static observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$1;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->NODE_TEXT_DATA:Lorg/checkerframework/com/github/javaparser/ast/DataKey;

    .line 75
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->LEXICAL_DIFFERENCE_CALCULATOR:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;
    .locals 1

    .line 65
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->LEXICAL_DIFFERENCE_CALCULATOR:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 65
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->findNodeListName(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "x1"    # Ljava/util/List;

    .line 65
    invoke-static {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->storeInitialTextForOneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;)V

    return-void
.end method

.method private static createObserver()Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .locals 2

    .line 115
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$1;)V

    return-object v0
.end method

.method static findIndentation(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 5
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 572
    .local v0, "followingNewlines":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->tokensPreceeding(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/Iterator;

    move-result-object v1

    .line 573
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    .line 575
    .local v2, "tte":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 576
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isNewline()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    goto :goto_1

    .line 579
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    .end local v2    # "tte":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    goto :goto_0

    .line 582
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 583
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 584
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->isSpaceOrTab()Z

    move-result v3

    if-nez v3, :cond_2

    .line 585
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 583
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 588
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method private static findNodeForToken(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 3
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "tokenRange"
        }
    .end annotation

    .line 344
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 345
    return-object v1

    .line 347
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/Range;->contains(Lorg/checkerframework/com/github/javaparser/Range;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 349
    .local v1, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-static {v1, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->findNodeForToken(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    .line 350
    .local v2, "found":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-eqz v2, :cond_1

    .line 351
    return-object v2

    .line 353
    .end local v1    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .end local v2    # "found":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_1
    goto :goto_0

    .line 354
    :cond_2
    return-object p0

    .line 356
    :cond_3
    return-object v1
.end method

.method private static findNodeListName(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .locals 9
    .param p0, "nodeList"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeList"
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    .line 609
    .local v0, "parent":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, v1, v4

    .line 610
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v6

    const-string v7, "get"

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const-class v8, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 612
    :try_start_0
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 613
    .local v6, "raw":Ljava/lang/Object;
    instance-of v8, v6, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v8, :cond_2

    .line 616
    move-object v8, v6

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 617
    .local v8, "result":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    if-ne v8, p0, :cond_1

    .line 618
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 622
    :cond_0
    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->fromCamelCaseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v2

    return-object v2

    .line 626
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "raw":Ljava/lang/Object;
    .end local v8    # "result":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_1
    goto/16 :goto_3

    .line 614
    .restart local v6    # "raw":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected NodeList, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parent":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local p0    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v6    # "raw":Ljava/lang/Object;
    .restart local v0    # "parent":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .restart local v5    # "m":Ljava/lang/reflect/Method;
    .restart local p0    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 627
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->isReturningOptionalNodeList(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 629
    :try_start_1
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Optional;

    .line 630
    .local v6, "raw":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<*>;>;"
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p0, :cond_5

    .line 631
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 633
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 635
    :cond_4
    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->fromCamelCaseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    .line 639
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "raw":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<*>;>;"
    :cond_5
    goto :goto_3

    .line 637
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    .line 638
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 609
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 642
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find list name of NodeList of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 561
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->NODE_TEXT_DATA:Lorg/checkerframework/com/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->containsData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;-><init>()V

    .line 563
    .local v1, "nodeText":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    .line 564
    invoke-static {p0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->prettyPrintingTextNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)V

    .line 566
    .end local v1    # "nodeText":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    return-object v0
.end method

.method private static interpret(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 11
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "csm"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p2, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "csm",
            "nodeText"
        }
    .end annotation

    .line 498
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;-><init>()V

    invoke-virtual {v0, p1, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatedSyntaxModelForNode(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v0

    .line 500
    .local v0, "calculatedSyntaxModel":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->findIndentation(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v1

    .line 502
    .local v1, "indentation":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    const/4 v2, 0x0

    .line 503
    .local v2, "pendingIndentation":Z
    iget-object v3, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 504
    .local v4, "element":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 505
    iget-object v5, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 506
    .local v5, "indexCurrentElement":I
    iget-object v8, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_1

    iget-object v8, v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    add-int/lit8 v9, v5, 0x1

    .line 507
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-nez v8, :cond_1

    .line 508
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_1

    .line 509
    new-instance v9, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const-string v10, " "

    invoke-direct {v9, v7, v10}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 512
    .end local v5    # "indexCurrentElement":I
    .end local v8    # "i":I
    :cond_0
    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v5, :cond_1

    .line 513
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 514
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 513
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 512
    .end local v5    # "i":I
    :cond_1
    nop

    .line 518
    :cond_2
    if-eqz v2, :cond_4

    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isNewLine()Z

    move-result v5

    if-nez v5, :cond_4

    .line 519
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)V

    invoke-interface {v1, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 522
    :cond_4
    const/4 v2, 0x0

    .line 523
    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v5, :cond_5

    .line 524
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addChild(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    goto :goto_3

    .line 525
    :cond_5
    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v5, :cond_7

    .line 526
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 527
    .local v5, "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v6

    invoke-virtual {v5, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getContent(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 528
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isNewLine()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 529
    const/4 v2, 0x1

    .line 531
    .end local v5    # "csmToken":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    :cond_6
    goto :goto_3

    :cond_7
    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    if-eqz v5, :cond_8

    .line 532
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    .line 533
    .local v5, "csmMix":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)V

    invoke-interface {v6, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 534
    .end local v5    # "csmMix":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    goto :goto_3

    .line 537
    :cond_8
    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-nez v5, :cond_a

    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v5, :cond_9

    goto :goto_3

    .line 538
    :cond_9
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 541
    .end local v4    # "element":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    :cond_a
    :goto_3
    goto/16 :goto_0

    .line 544
    :cond_b
    instance-of v3, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    if-eqz v3, :cond_c

    .line 545
    move-object v3, p0

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 546
    .local v3, "variableDeclarator":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getParentNode()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 556
    .end local v3    # "variableDeclarator":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    :cond_c
    return-object p2
.end method

.method private static isReturningOptionalNodeList(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 597
    return v1

    .line 599
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_1

    .line 600
    return v1

    .line 602
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 603
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v1, v2, v1

    .line 604
    .local v1, "optionalArgument":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method static synthetic lambda$interpret$5(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p2, "e"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "nodeText",
            "e"
        }
    .end annotation

    .line 533
    invoke-static {p0, p2, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->interpret(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    return-void
.end method

.method static synthetic lambda$interpret$7(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p0, "variableDeclarator"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p1, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p2, "parent"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "variableDeclarator",
            "nodeText",
            "parent"
        }
    .end annotation

    .line 547
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda7;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$null$6(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V
    .locals 4
    .param p0, "variableDeclarator"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p1, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p2, "mct"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "variableDeclarator",
            "nodeText",
            "mct"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v0

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v1

    sub-int/2addr v0, v1

    .line 549
    .local v0, "extraArrayLevels":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 550
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 551
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    const/16 v3, 0x65

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$setup$0(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/TokenRange;)V
    .locals 1
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "r"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "node",
            "r"
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->storeInitialText(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 103
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->isRegistered(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->registerForSubtree(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 106
    :cond_0
    return-void
.end method

.method static synthetic lambda$storeInitialText$1(Lorg/checkerframework/com/github/javaparser/JavaToken;)Ljava/lang/RuntimeException;
    .locals 3
    .param p0, "token"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "token"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token without range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$storeInitialTextForOneNode$2(Lorg/checkerframework/com/github/javaparser/utils/Pair;)Lorg/checkerframework/com/github/javaparser/Position;
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/utils/Pair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v0, v0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    return-object v0
.end method

.method static synthetic lambda$storeInitialTextForOneNode$3(Lorg/checkerframework/com/github/javaparser/utils/Pair;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .locals 1
    .param p0, "p"    # Lorg/checkerframework/com/github/javaparser/utils/Pair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    return-object v0
.end method

.method static synthetic lambda$tokensPreceeding$4(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/Iterator;
    .locals 1
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "node"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->tokensPreceeding(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static prettyPrintingTextNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)V
    .locals 3
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "nodeText"
        }
    .end annotation

    .line 441
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    if-eqz v0, :cond_0

    .line 442
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    .line 443
    .local v0, "primitiveType":Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$3;->$SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive:[I

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 469
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 466
    :pswitch_0
    const/16 v1, 0x18

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 467
    goto :goto_0

    .line 463
    :pswitch_1
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 464
    goto :goto_0

    .line 460
    :pswitch_2
    const/16 v1, 0x28

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 461
    goto :goto_0

    .line 457
    :pswitch_3
    const/16 v1, 0x26

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 458
    goto :goto_0

    .line 454
    :pswitch_4
    const/16 v1, 0x31

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 455
    goto :goto_0

    .line 451
    :pswitch_5
    const/16 v1, 0xf

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 452
    goto :goto_0

    .line 448
    :pswitch_6
    const/16 v1, 0x12

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 449
    goto :goto_0

    .line 445
    :pswitch_7
    const/16 v1, 0xd

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 446
    nop

    .line 471
    :goto_0
    return-void

    .line 473
    .end local v0    # "primitiveType":Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    const-string v1, "*/"

    if-eqz v0, :cond_1

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/**"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 475
    return-void

    .line 477
    :cond_1
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    if-eqz v0, :cond_2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 479
    return-void

    .line 481
    :cond_2
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    if-eqz v0, :cond_3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 483
    return-void

    .line 485
    :cond_3
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    if-eqz v0, :cond_4

    .line 486
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    .line 487
    .local v0, "modifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->toToken(Lorg/checkerframework/com/github/javaparser/ast/Modifier;)I

    move-result v1

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(ILjava/lang/String;)V

    .line 488
    return-void

    .line 491
    .end local v0    # "modifier":Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->interpret(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    .line 492
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static print(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 418
    .local v0, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-static {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->print(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    nop

    .line 422
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected IOException on a StringWriter"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static print(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/io/Writer;)V
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->NODE_TEXT_DATA:Lorg/checkerframework/com/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->containsData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    .line 432
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    .line 433
    .local v0, "text":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->expand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 434
    return-void
.end method

.method public static setup(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(TN;)TN;"
        }
    .end annotation

    .line 94
    .local p0, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->createObserver()Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->observer:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    .line 100
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 107
    return-object p0
.end method

.method private static storeInitialText(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 7
    .param p0, "root"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 320
    .local v0, "tokensByNode":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List<Lorg/checkerframework/com/github/javaparser/JavaToken;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 321
    .local v2, "token":Lorg/checkerframework/com/github/javaparser/JavaToken;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/Range;

    .line 322
    .local v3, "tokenRange":Lorg/checkerframework/com/github/javaparser/Range;
    invoke-static {p0, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->findNodeForToken(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v4

    .line 323
    .local v4, "owner":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-eqz v4, :cond_1

    .line 326
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 327
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v2    # "token":Lorg/checkerframework/com/github/javaparser/JavaToken;
    .end local v3    # "tokenRange":Lorg/checkerframework/com/github/javaparser/Range;
    .end local v4    # "owner":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_0

    .line 324
    .restart local v2    # "token":Lorg/checkerframework/com/github/javaparser/JavaToken;
    .restart local v3    # "tokenRange":Lorg/checkerframework/com/github/javaparser/Range;
    .restart local v4    # "owner":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Token without node owning it: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    .end local v2    # "token":Lorg/checkerframework/com/github/javaparser/JavaToken;
    .end local v3    # "tokenRange":Lorg/checkerframework/com/github/javaparser/Range;
    .end local v4    # "owner":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_2
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;-><init>(Ljava/util/Map;)V

    .line 340
    invoke-virtual {v1, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;->visitBreadthFirst(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 341
    return-void
.end method

.method private static storeInitialTextForOneNode(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;)V
    .locals 6
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "nodeTokens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            ">;)V"
        }
    .end annotation

    .line 361
    .local p1, "nodeTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/JavaToken;>;"
    if-nez p1, :cond_0

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 364
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 365
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/utils/Pair<Lorg/checkerframework/com/github/javaparser/Range;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 366
    .local v2, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 367
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-direct {v5, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Range not present on node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    .end local v2    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_2
    :goto_1
    goto :goto_0

    .line 373
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 374
    .local v2, "token":Lorg/checkerframework/com/github/javaparser/JavaToken;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-direct {v5, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v2    # "token":Lorg/checkerframework/com/github/javaparser/JavaToken;
    goto :goto_2

    .line 376
    :cond_4
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 377
    sget-object v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->NODE_TEXT_DATA:Lorg/checkerframework/com/github/javaparser/ast/DataKey;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method private static tokensPreceeding(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/Iterator;
    .locals 5
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$EmptyIterator;-><init>()V

    return-object v0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    .line 392
    .local v0, "parentNodeText":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->tryToFindChild(Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result v1

    .line 393
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 394
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    if-eqz v2, :cond_1

    .line 395
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->tokensPreceeding(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    .line 397
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 399
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    filled-new-array {p0, v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    .line 398
    const-string v4, "I could not find child \'%s\' in parent \'%s\'. parentNodeText: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_2
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;

    add-int/lit8 v3, v1, -0x1

    .line 404
    invoke-static {v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory;->partialReverseIterator(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda8;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator;-><init>(Ljava/util/Iterator;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;)V

    .line 403
    return-object v2
.end method
