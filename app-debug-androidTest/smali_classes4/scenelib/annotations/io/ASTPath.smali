.class public Lscenelib/annotations/io/ASTPath;
.super Lscenelib/annotations/io/ImmutableStack;
.source "ASTPath.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscenelib/annotations/io/ASTPath$Matcher;,
        Lscenelib/annotations/io/ASTPath$Parser;,
        Lscenelib/annotations/io/ASTPath$ASTEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/io/ImmutableStack<",
        "Lscenelib/annotations/io/ASTPath$ASTEntry;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lscenelib/annotations/io/ASTPath;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lscenelib/annotations/io/ASTPath$ASTEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANNOTATION:Ljava/lang/String; = "annotation"

.field public static final ARGUMENT:Ljava/lang/String; = "argument"

.field public static final BLOCK:Ljava/lang/String; = "block"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final BOUND:Ljava/lang/String; = "bound"

.field public static final CASE:Ljava/lang/String; = "case"

.field public static final CATCH:Ljava/lang/String; = "catch"

.field public static final CLASS_BODY:Ljava/lang/String; = "classBody"

.field public static final CONDITION:Ljava/lang/String; = "condition"

.field public static final DETAIL:Ljava/lang/String; = "detail"

.field public static final DIMENSION:Ljava/lang/String; = "dimension"

.field public static final ELSE_STATEMENT:Ljava/lang/String; = "elseStatement"

.field private static final EMPTY:Lscenelib/annotations/io/ASTPath;

.field public static final ENCLOSING_EXPRESSION:Ljava/lang/String; = "enclosingExpression"

.field public static final EXPRESSION:Ljava/lang/String; = "expression"

.field public static final FALSE_EXPRESSION:Ljava/lang/String; = "falseExpression"

.field public static final FINALLY_BLOCK:Ljava/lang/String; = "finallyBlock"

.field public static final IDENTIFIER:Ljava/lang/String; = "identifier"

.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final INITIALIZER:Ljava/lang/String; = "initializer"

.field public static final LEFT_OPERAND:Ljava/lang/String; = "leftOperand"

.field public static final METHOD_SELECT:Ljava/lang/String; = "methodSelect"

.field public static final MODIFIERS:Ljava/lang/String; = "modifiers"

.field public static final PARAMETER:Ljava/lang/String; = "parameter"

.field public static final QUALIFIER_EXPRESSION:Ljava/lang/String; = "qualifierExpression"

.field public static final RESOURCE:Ljava/lang/String; = "resource"

.field public static final RIGHT_OPERAND:Ljava/lang/String; = "rightOperand"

.field public static final STATEMENT:Ljava/lang/String; = "statement"

.field public static final THEN_STATEMENT:Ljava/lang/String; = "thenStatement"

.field public static final THROWS:Ljava/lang/String; = "throws"

.field public static final TRUE_EXPRESSION:Ljava/lang/String; = "trueExpression"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_ALTERNATIVE:Ljava/lang/String; = "typeAlternative"

.field public static final TYPE_ARGUMENT:Ljava/lang/String; = "typeArgument"

.field public static final TYPE_PARAMETER:Ljava/lang/String; = "typeParameter"

.field public static final UNDERLYING_TYPE:Ljava/lang/String; = "underlyingType"

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final VARIABLE:Ljava/lang/String; = "variable"

.field private static comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lscenelib/annotations/io/ASTPath;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeSelectors:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 72
    new-instance v0, Lscenelib/annotations/io/ASTPath;

    invoke-direct {v0}, Lscenelib/annotations/io/ASTPath;-><init>()V

    sput-object v0, Lscenelib/annotations/io/ASTPath;->EMPTY:Lscenelib/annotations/io/ASTPath;

    .line 73
    const-string v1, "bound"

    const-string v2, "identifier"

    const-string v3, "type"

    const-string v4, "typeAlternative"

    const-string v5, "typeArgument"

    const-string v6, "typeParameter"

    const-string v7, "underlyingType"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/io/ASTPath;->typeSelectors:[Ljava/lang/String;

    .line 267
    new-instance v0, Lscenelib/annotations/io/ASTPath$1;

    invoke-direct {v0}, Lscenelib/annotations/io/ASTPath$1;-><init>()V

    sput-object v0, Lscenelib/annotations/io/ASTPath;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Lscenelib/annotations/io/ImmutableStack;-><init>()V

    return-void
.end method

.method private static canonical(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTPath;
    .locals 0
    .param p0, "astPath"    # Lscenelib/annotations/io/ASTPath;

    .line 323
    return-object p0
.end method

.method public static empty()Lscenelib/annotations/io/ASTPath;
    .locals 1

    .line 276
    sget-object v0, Lscenelib/annotations/io/ASTPath;->EMPTY:Lscenelib/annotations/io/ASTPath;

    return-object v0
.end method

.method public static getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lscenelib/annotations/io/ASTPath;",
            ">;"
        }
    .end annotation

    .line 279
    sget-object v0, Lscenelib/annotations/io/ASTPath;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static isBinaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1253
    invoke-virtual {p0}, Lcom/sun/source/tree/Tree$Kind;->asInterface()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/source/tree/BinaryTree;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1220
    invoke-virtual {p0}, Lcom/sun/source/tree/Tree$Kind;->asInterface()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/source/tree/ClassTree;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCompoundAssignment(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1231
    invoke-virtual {p0}, Lcom/sun/source/tree/Tree$Kind;->asInterface()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/source/tree/CompoundAssignmentTree;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDeclaration(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 1
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1295
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION:Lcom/sun/source/tree/Tree$Kind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isHandled(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1312
    sget-object v0, Lscenelib/annotations/io/ASTPath$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p0}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1320
    invoke-static {p0}, Lscenelib/annotations/io/ASTPath;->isDeclaration(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    goto :goto_0

    .line 1318
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1320
    :goto_0
    xor-int/lit8 v0, v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isLiteral(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1257
    invoke-virtual {p0}, Lcom/sun/source/tree/Tree$Kind;->asInterface()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/source/tree/LiteralTree;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTypeKind(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1261
    sget-object v0, Lscenelib/annotations/io/ASTPath$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p0}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1272
    const/4 v0, 0x0

    return v0

    .line 1270
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x1a -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isTypeSelector(Ljava/lang/String;)Z
    .locals 2
    .param p0, "selector"    # Ljava/lang/String;

    .line 1215
    sget-object v0, Lscenelib/annotations/io/ASTPath;->typeSelectors:[Ljava/lang/String;

    .line 1216
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 1215
    invoke-static {v0, p0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnaryOperator(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1242
    invoke-virtual {p0}, Lcom/sun/source/tree/Tree$Kind;->asInterface()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/source/tree/UnaryTree;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 1284
    invoke-virtual {p0}, Lcom/sun/source/tree/Tree$Kind;->asInterface()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/source/tree/WildcardTree;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parse(Ljava/lang/String;)Lscenelib/annotations/io/ASTPath;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 334
    new-instance v0, Lscenelib/annotations/io/ASTPath$Parser;

    invoke-direct {v0, p0}, Lscenelib/annotations/io/ASTPath$Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath$Parser;->parseASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;
    .locals 3
    .param p1, "entry"    # Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 304
    sget-object v0, Lscenelib/annotations/io/ASTPath;->EMPTY:Lscenelib/annotations/io/ASTPath;

    .line 305
    .local v0, "path":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .local v2, "e":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v0, v2}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .end local v2    # "e":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v0, p1}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 70
    check-cast p1, Lscenelib/annotations/io/ASTPath;

    invoke-virtual {p0, p1}, Lscenelib/annotations/io/ASTPath;->compareTo(Lscenelib/annotations/io/ASTPath;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lscenelib/annotations/io/ASTPath;)I
    .locals 11
    .param p1, "o"    # Lscenelib/annotations/io/ASTPath;

    .line 1348
    invoke-static {p0}, Lscenelib/annotations/io/ASTPath;->canonical(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 1349
    .local v0, "s0":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    invoke-static {p1}, Lscenelib/annotations/io/ASTPath;->canonical(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    .line 1350
    .local v1, "s1":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1351
    .local v2, "d0":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1352
    .local v3, "d1":Ljava/util/Deque;, "Ljava/util/Deque<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    const/4 v4, 0x0

    .line 1353
    .local v4, "c":I
    :goto_0
    invoke-virtual {v0}, Lscenelib/annotations/io/ImmutableStack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1354
    invoke-virtual {v0}, Lscenelib/annotations/io/ImmutableStack;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1355
    invoke-virtual {v0}, Lscenelib/annotations/io/ImmutableStack;->pop()Lscenelib/annotations/io/ImmutableStack;

    move-result-object v0

    goto :goto_0

    .line 1357
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lscenelib/annotations/io/ImmutableStack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1358
    invoke-virtual {v1}, Lscenelib/annotations/io/ImmutableStack;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1359
    invoke-virtual {v1}, Lscenelib/annotations/io/ImmutableStack;->pop()Lscenelib/annotations/io/ImmutableStack;

    move-result-object v1

    goto :goto_1

    .line 1361
    :cond_1
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v5

    .line 1362
    .local v5, "n0":I
    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v6

    .line 1363
    .local v6, "n1":I
    invoke-static {v5, v6}, Ljava/lang/Integer;->compare(II)I

    move-result v4

    .line 1364
    if-nez v4, :cond_3

    .line 1365
    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1366
    .local v7, "i0":Ljava/util/Iterator;, "Ljava/util/Iterator<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1367
    .local v8, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1368
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v9, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->compareTo(Lscenelib/annotations/io/ASTPath$ASTEntry;)I

    move-result v4

    .line 1369
    if-eqz v4, :cond_2

    return v4

    .line 1372
    .end local v7    # "i0":Ljava/util/Iterator;, "Ljava/util/Iterator<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    .end local v8    # "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    :cond_3
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1338
    instance-of v0, p1, Lscenelib/annotations/io/ASTPath;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/io/ASTPath;

    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTPath;->equals(Lscenelib/annotations/io/ASTPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/io/ASTPath;)Z
    .locals 1
    .param p1, "astPath"    # Lscenelib/annotations/io/ASTPath;

    .line 1342
    invoke-virtual {p0, p1}, Lscenelib/annotations/io/ASTPath;->compareTo(Lscenelib/annotations/io/ASTPath;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;
    .locals 1
    .param p1, "entry"    # Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 310
    invoke-virtual {p0, p1}, Lscenelib/annotations/io/ASTPath;->push(Ljava/lang/Object;)Lscenelib/annotations/io/ImmutableStack;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/ASTPath;

    return-object v0
.end method

.method public extendNewArray(I)Lscenelib/annotations/io/ASTPath;
    .locals 4
    .param p1, "depth"    # I

    .line 296
    new-instance v0, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;
    .locals 1

    .line 318
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/ASTPath$ASTEntry;

    return-object v0
.end method

.method public getParentPath()Lscenelib/annotations/io/ASTPath;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath;->pop()Lscenelib/annotations/io/ImmutableStack;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/ASTPath;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1327
    invoke-static {p0}, Lscenelib/annotations/io/ASTPath;->canonical(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 1328
    .local v0, "s":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    const/4 v1, 0x0

    .line 1329
    .local v1, "hash":I
    :goto_0
    invoke-virtual {v0}, Lscenelib/annotations/io/ImmutableStack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1330
    invoke-virtual {v0}, Lscenelib/annotations/io/ImmutableStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 1331
    invoke-virtual {v0}, Lscenelib/annotations/io/ImmutableStack;->pop()Lscenelib/annotations/io/ImmutableStack;

    move-result-object v0

    goto :goto_0

    .line 1333
    :cond_0
    return v1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 70
    invoke-super {p0}, Lscenelib/annotations/io/ImmutableStack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lscenelib/annotations/io/ASTPath$ASTEntry;",
            ">;"
        }
    .end annotation

    .line 285
    move-object v0, p0

    .line 286
    .local v0, "s":Lscenelib/annotations/io/ImmutableStack;, "Lscenelib/annotations/io/ImmutableStack<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v1

    .line 287
    .local v1, "n":I
    new-array v2, v1, [Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 288
    .local v2, "a":[Lscenelib/annotations/io/ASTPath$ASTEntry;
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 289
    invoke-virtual {v0}, Lscenelib/annotations/io/ImmutableStack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/io/ASTPath$ASTEntry;

    aput-object v3, v2, v1

    .line 290
    invoke-virtual {v0}, Lscenelib/annotations/io/ImmutableStack;->pop()Lscenelib/annotations/io/ImmutableStack;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    return-object v3
.end method

.method public matches(Lcom/sun/source/util/TreePath;)Z
    .locals 4
    .param p1, "treePath"    # Lcom/sun/source/util/TreePath;

    .line 341
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v0

    .line 342
    .local v0, "cut":Lcom/sun/source/tree/CompilationUnitTree;
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 343
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    invoke-static {v0}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/io/ASTRecord;

    iget-object v2, v2, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 344
    .local v2, "astPath":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {p0, v2}, Lscenelib/annotations/io/ASTPath;->equals(Lscenelib/annotations/io/ASTPath;)Z

    move-result v3

    return v3
.end method

.method public newArrayLevel(I)Lscenelib/annotations/io/ASTPath;
    .locals 4
    .param p1, "depth"    # I

    .line 300
    new-instance v0, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTPath;->add(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pop()Lscenelib/annotations/io/ImmutableStack;
    .locals 1

    .line 70
    invoke-super {p0}, Lscenelib/annotations/io/ImmutableStack;->pop()Lscenelib/annotations/io/ImmutableStack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 70
    invoke-super {p0}, Lscenelib/annotations/io/ImmutableStack;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1377
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1378
    :cond_0
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1379
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1380
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1381
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 1383
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
