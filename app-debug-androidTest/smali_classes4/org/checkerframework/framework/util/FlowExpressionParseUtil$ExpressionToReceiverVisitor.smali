.class Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;
.super Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;
.source "FlowExpressionParseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/FlowExpressionParseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpressionToReceiverVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<",
        "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
        "Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final env:Ljavax/annotation/processing/ProcessingEnvironment;

.field private final path:Lcom/sun/source/util/TreePath;

.field private final types:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>(Lcom/sun/source/util/TreePath;Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 179
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;-><init>()V

    .line 180
    iput-object p1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    .line 181
    iput-object p2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 182
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    .line 183
    return-void
.end method

.method private convertTypeToTypeMirror(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljavax/lang/model/type/TypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 575
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->isClassOrInterfaceType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseExpression(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    .line 577
    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 578
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 576
    return-object v0

    .line 579
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    sget-object v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;->$SwitchMap$com$github$javaparser$ast$type$PrimitiveType$Primitive:[I

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->asPrimitiveType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 596
    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    return-object v0

    .line 594
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    return-object v0

    .line 592
    :pswitch_2
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    return-object v0

    .line 590
    :pswitch_3
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    return-object v0

    .line 588
    :pswitch_4
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    return-object v0

    .line 586
    :pswitch_5
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    return-object v0

    .line 584
    :pswitch_6
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    return-object v0

    .line 582
    :pswitch_7
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    return-object v0

    .line 598
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->isVoidType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v0

    return-object v0

    .line 600
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    .line 602
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->asArrayType()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->convertTypeToTypeMirror(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 601
    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object v0

    return-object v0

    .line 604
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0

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

.method private static getParameterReceiver(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 646
    iget-object v0, p1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->arguments:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 649
    invoke-static {}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$400()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 651
    .local v0, "idx":I
    if-eqz v0, :cond_1

    .line 657
    iget-object v2, p1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->arguments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 662
    iget-object v1, p1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->arguments:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    return-object v1

    .line 658
    :cond_0
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    new-instance v3, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    .line 660
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "flowexpr.parse.index.too.big"

    invoke-direct {v3, v5, v4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v2

    .line 652
    :cond_1
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 653
    const-string v3, "one should use \"this\" for the receiver or \"#1\" for the first formal parameter"

    invoke-static {p0, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v2

    .line 647
    .end local v0    # "idx":I
    :cond_2
    new-instance v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    const-string v2, "no parameter found"

    invoke-static {p0, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v0
.end method

.method private static getReceiverField(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;ZLjavax/lang/model/element/VariableElement;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "originalReceiver"    # Z
    .param p3, "fieldElem"    # Ljavax/lang/model/element/VariableElement;

    .line 616
    iget-object v0, p1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 618
    .local v0, "receiverType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {p3}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 619
    .local v1, "fieldType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {p3}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    invoke-interface {p3}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 621
    .local v2, "classElem":Ljavax/lang/model/element/Element;
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-static {v2}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 622
    .local v3, "staticClassReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-direct {v4, v3, v1, p3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/VariableElement;)V

    return-object v4

    .line 625
    .end local v2    # "classElem":Ljavax/lang/model/element/Element;
    .end local v3    # "staticClassReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_0
    if-eqz p2, :cond_1

    .line 626
    iget-object v2, p1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .local v2, "locationOfField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 628
    .end local v2    # "locationOfField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_1
    iget-object v2, p1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->checkerContext:Lorg/checkerframework/framework/util/BaseContext;

    .line 630
    invoke-interface {v2}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;

    invoke-direct {v3, v0}, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 629
    invoke-static {v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 633
    .restart local v2    # "locationOfField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_0
    instance-of v3, v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-nez v3, :cond_2

    .line 638
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-direct {v3, v2, v1, p3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/VariableElement;)V

    return-object v3

    .line 634
    :cond_2
    new-instance v3, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 635
    const-string v4, "a non-static field cannot have a class name as a receiver."

    invoke-static {p0, v4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v3
.end method


# virtual methods
.method public bridge synthetic defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 189
    const-string v0, "is not a supported expression"

    .line 190
    .local v0, "message":Ljava/lang/String;
    iget-boolean v1, p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->parsingMember:Z

    if-eqz v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in a context with parsingMember=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_0
    new-instance v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 8
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 269
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 270
    .local v0, "array":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->copyAndUseOuterReceiver()Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v1

    .line 271
    .local v1, "contextForIndex":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 273
    .local v2, "index":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 274
    .local v3, "arrayType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_0

    .line 281
    move-object v4, v3

    check-cast v4, Lcom/sun/tools/javac/code/Type$ArrayType;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type$ArrayType;->getComponentType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 282
    .local v4, "componentType":Ljavax/lang/model/type/TypeMirror;
    new-instance v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    invoke-direct {v5, v4, v0, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    return-object v5

    .line 275
    .end local v4    # "componentType":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    new-instance v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 277
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v6

    .line 278
    const-string v7, "array not an array: %s : %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-static {v5, v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 7
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v0, "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    .line 539
    .local v2, "dimension":Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 542
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    .end local v2    # "dimension":Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    :goto_1
    goto :goto_0

    .line 546
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v1, "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 549
    .local v4, "initializer":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v4    # "initializer":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    goto :goto_2

    .line 552
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->convertTypeToTypeMirror(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 553
    .local v2, "arrayType":Ljavax/lang/model/type/TypeMirror;
    if-eqz v2, :cond_4

    .line 558
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 559
    iget-object v4, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v4}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/checkerframework/javacutil/TypesUtils;->createArrayType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Ljavax/lang/model/type/ArrayType;

    move-result-object v2

    .line 558
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 561
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;

    invoke-direct {v3, v2, v0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    .line 554
    :cond_4
    new-instance v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 556
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v5

    .line 555
    const-string v6, "type not parsable"

    invoke-static {v5, v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 3
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 213
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v2, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->asChar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 4
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 525
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->convertTypeToTypeMirror(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 526
    .local v0, "result":Ljavax/lang/model/type/TypeMirror;
    if-eqz v0, :cond_0

    .line 531
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v1

    .line 527
    :cond_0
    new-instance v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 529
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->toString()Ljava/lang/String;

    move-result-object v2

    .line 528
    const-string v3, "is an unparsable class literal"

    invoke-static {v2, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 4
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 218
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->asDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 1
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 263
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 7
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 491
    new-instance v0, Lorg/checkerframework/javacutil/Resolver;

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/Resolver;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 493
    .local v0, "resolver":Lorg/checkerframework/javacutil/Resolver;
    nop

    .line 494
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/javacutil/Resolver;->findPackage(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    .line 495
    .local v1, "packageSymbol":Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    if-eqz v1, :cond_1

    .line 496
    nop

    .line 497
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getNameAsString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    invoke-virtual {v0, v2, v1, v3}, Lorg/checkerframework/javacutil/Resolver;->findClassInPackage(Ljava/lang/String;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    .line 498
    .local v2, "classSymbol":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    if-eqz v2, :cond_0

    .line 499
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v3

    .line 501
    :cond_0
    new-instance v3, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 503
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not find class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 505
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getNameAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " inside "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 507
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 502
    invoke-static {v4, v5}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v3

    .line 510
    .end local v2    # "classSymbol":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 513
    .local v2, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 514
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->copyChangeToParsingMemberOfReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v3

    .line 515
    .local v3, "newContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getNameAsExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 3
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 203
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v2, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 4
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 208
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    sget-object v2, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->asLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 19
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 372
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lorg/checkerframework/javacutil/Resolver;

    iget-object v4, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/Resolver;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 377
    .local v3, "resolver":Lorg/checkerframework/javacutil/Resolver;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v4, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 379
    .local v4, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v0, v4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->copyChangeToParsingMemberOfReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v0

    .line 380
    .end local p2    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .local v0, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->removeScope()Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object v5

    move-object v4, v0

    .end local p1    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .local v5, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    goto :goto_0

    .line 377
    .end local v0    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .end local v4    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local p1    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local p2    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    :cond_0
    move-object/from16 v5, p1

    move-object v4, v0

    .line 383
    .end local p1    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .end local p2    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .local v4, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .restart local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    :goto_0
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getNameAsString()Ljava/lang/String;

    move-result-object v6

    .line 386
    .local v6, "methodName":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 388
    .local v7, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 389
    .local v8, "argument":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->copyAndUseOuterReceiver()Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v8    # "argument":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    goto :goto_1

    .line 393
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 394
    .local v8, "argumentTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 395
    .local v9, "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v9}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v9    # "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_2

    .line 399
    :cond_2
    const/4 v0, 0x0

    .line 402
    .local v0, "element":Ljavax/lang/model/element/Element;
    :try_start_0
    iget-object v10, v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v10}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    .line 404
    .local v10, "receiverType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v10}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v11

    sget-object v12, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-ne v11, v12, :cond_3

    .line 405
    :try_start_1
    iget-object v11, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    invoke-virtual {v3, v6, v10, v11, v8}, Lorg/checkerframework/javacutil/Resolver;->findMethod(Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/util/TreePath;Ljava/util/List;)Ljavax/lang/model/element/Element;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v11

    goto :goto_3

    .line 448
    .end local v0    # "element":Ljavax/lang/model/element/Element;
    .end local v10    # "receiverType":Ljavax/lang/model/type/TypeMirror;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 p2, v5

    move-object/from16 v18, v6

    goto/16 :goto_7

    .line 409
    .restart local v0    # "element":Ljavax/lang/model/element/Element;
    .restart local v10    # "receiverType":Ljavax/lang/model/type/TypeMirror;
    :cond_3
    :goto_3
    :try_start_2
    invoke-interface {v10}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v11

    sget-object v12, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v11, v12, :cond_5

    .line 410
    :try_start_3
    iget-object v11, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    invoke-virtual {v3, v6, v10, v11, v8}, Lorg/checkerframework/javacutil/Resolver;->findMethod(Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/util/TreePath;Ljava/util/List;)Ljavax/lang/model/element/Element;

    move-result-object v11

    move-object v0, v11

    .line 411
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v11

    sget-object v12, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v11, v12, :cond_4

    .line 412
    goto :goto_4

    .line 414
    :cond_4
    move-object v11, v10

    check-cast v11, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v11}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$300(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v11

    goto :goto_3

    .line 417
    :cond_5
    :goto_4
    if-eqz v0, :cond_c

    .line 420
    :try_start_4
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v11

    sget-object v12, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v11, v12, :cond_b

    .line 424
    move-object v11, v0

    check-cast v11, Ljavax/lang/model/element/ExecutableElement;

    .line 427
    .local v11, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_8

    .line 428
    invoke-interface {v11}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/lang/model/element/VariableElement;

    .line 429
    .local v13, "parameter":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v13}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v14

    .line 430
    .local v14, "parameterType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 431
    .local v15, "argument":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v15}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v16

    .line 433
    .local v16, "argumentType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v14}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 434
    invoke-static/range {v16 .. v16}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 435
    iget-object v9, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 436
    invoke-static {v9, v14}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->getValueOfMethod(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v9

    .line 437
    .local v9, "valueOfMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 p2, v17

    .line 438
    .local p2, "p":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    move-object/from16 v17, v3

    move-object/from16 v3, p2

    .end local p2    # "p":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .local v3, "p":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .local v17, "resolver":Lorg/checkerframework/javacutil/Resolver;
    :try_start_5
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 439
    move-object/from16 p2, v5

    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .local p2, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    :try_start_6
    new-instance v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v18, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .local v18, "methodName":Ljava/lang/String;
    :try_start_7
    new-instance v6, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v6, v14}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    invoke-direct {v5, v14, v9, v6, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;-><init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;)V

    .line 445
    .local v5, "boxedParam":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-interface {v7, v12, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    .line 448
    .end local v0    # "element":Ljavax/lang/model/element/Element;
    .end local v3    # "p":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v5    # "boxedParam":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v9    # "valueOfMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .end local v10    # "receiverType":Ljavax/lang/model/type/TypeMirror;
    .end local v11    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .end local v12    # "i":I
    .end local v13    # "parameter":Ljavax/lang/model/element/VariableElement;
    .end local v14    # "parameterType":Ljavax/lang/model/type/TypeMirror;
    .end local v15    # "argument":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v16    # "argumentType":Ljavax/lang/model/type/TypeMirror;
    .end local v18    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v18    # "methodName":Ljava/lang/String;
    goto/16 :goto_7

    .end local v18    # "methodName":Ljava/lang/String;
    .end local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .local v5, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v6    # "methodName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 p2, v5

    move-object/from16 v18, v6

    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v18    # "methodName":Ljava/lang/String;
    .restart local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    goto/16 :goto_7

    .line 434
    .end local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v18    # "methodName":Ljava/lang/String;
    .end local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v0    # "element":Ljavax/lang/model/element/Element;
    .local v3, "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v10    # "receiverType":Ljavax/lang/model/type/TypeMirror;
    .restart local v11    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v12    # "i":I
    .restart local v13    # "parameter":Ljavax/lang/model/element/VariableElement;
    .restart local v14    # "parameterType":Ljavax/lang/model/type/TypeMirror;
    .restart local v15    # "argument":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .restart local v16    # "argumentType":Ljavax/lang/model/type/TypeMirror;
    :cond_6
    move-object/from16 v17, v3

    move-object/from16 p2, v5

    move-object/from16 v18, v6

    .end local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v18    # "methodName":Ljava/lang/String;
    .restart local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    goto :goto_6

    .line 433
    .end local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v18    # "methodName":Ljava/lang/String;
    .end local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v6    # "methodName":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v3

    move-object/from16 p2, v5

    move-object/from16 v18, v6

    .line 427
    .end local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v13    # "parameter":Ljavax/lang/model/element/VariableElement;
    .end local v14    # "parameterType":Ljavax/lang/model/type/TypeMirror;
    .end local v15    # "argument":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v16    # "argumentType":Ljavax/lang/model/type/TypeMirror;
    .restart local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v18    # "methodName":Ljava/lang/String;
    .restart local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p2

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto :goto_5

    .end local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v18    # "methodName":Ljava/lang/String;
    .end local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v6    # "methodName":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v3

    move-object/from16 p2, v5

    move-object/from16 v18, v6

    .line 453
    .end local v0    # "element":Ljavax/lang/model/element/Element;
    .end local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v10    # "receiverType":Ljavax/lang/model/type/TypeMirror;
    .end local v12    # "i":I
    .restart local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v18    # "methodName":Ljava/lang/String;
    .restart local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    nop

    .line 463
    invoke-static {v11}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 464
    invoke-interface {v11}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 465
    .local v0, "classElem":Ljavax/lang/model/element/Element;
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 466
    .local v3, "staticClassReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 467
    invoke-static {v11}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-direct {v5, v6, v11, v3, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;-><init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;)V

    .line 466
    return-object v5

    .line 472
    .end local v0    # "classElem":Ljavax/lang/model/element/Element;
    .end local v3    # "staticClassReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_9
    iget-object v0, v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    instance-of v0, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-nez v0, :cond_a

    .line 478
    iget-object v0, v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 480
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object v3, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 479
    invoke-static {v11, v0, v3}, Lorg/checkerframework/javacutil/TypesUtils;->substituteMethodReturnType(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 481
    .local v0, "methodType":Ljavax/lang/model/type/TypeMirror;
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    iget-object v5, v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-direct {v3, v0, v11, v5, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;-><init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;)V

    return-object v3

    .line 473
    .end local v0    # "methodType":Ljavax/lang/model/type/TypeMirror;
    :cond_a
    new-instance v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 474
    const-string v3, "a non-static method call cannot have a class name as a receiver"

    invoke-static {v2, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v0

    .line 421
    .end local v11    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .end local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v18    # "methodName":Ljava/lang/String;
    .end local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .local v0, "element":Ljavax/lang/model/element/Element;
    .local v3, "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v10    # "receiverType":Ljavax/lang/model/type/TypeMirror;
    :cond_b
    move-object/from16 v17, v3

    move-object/from16 p2, v5

    move-object/from16 v18, v6

    .end local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v18    # "methodName":Ljava/lang/String;
    .restart local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "element.getKind()=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v3

    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .end local v7    # "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v8    # "argumentTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeMirror;>;"
    .end local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v18    # "methodName":Ljava/lang/String;
    .end local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    throw v3

    .line 418
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v4    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .restart local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v7    # "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .restart local v8    # "argumentTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeMirror;>;"
    :cond_c
    move-object/from16 v17, v3

    move-object/from16 p2, v5

    move-object/from16 v18, v6

    .end local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v18    # "methodName":Ljava/lang/String;
    .restart local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    const-string v3, "element==null"

    invoke-static {v2, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v3

    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .end local v7    # "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v8    # "argumentTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeMirror;>;"
    .end local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v18    # "methodName":Ljava/lang/String;
    .end local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 448
    .end local v0    # "element":Ljavax/lang/model/element/Element;
    .end local v10    # "receiverType":Ljavax/lang/model/type/TypeMirror;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v4    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .restart local v7    # "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .restart local v8    # "argumentTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeMirror;>;"
    .restart local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v18    # "methodName":Ljava/lang/String;
    .restart local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    :catchall_3
    move-exception v0

    goto :goto_7

    .end local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v18    # "methodName":Ljava/lang/String;
    .end local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .restart local v6    # "methodName":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 p2, v5

    move-object/from16 v18, v6

    .line 449
    .end local v3    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .end local v6    # "methodName":Ljava/lang/String;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v17    # "resolver":Lorg/checkerframework/javacutil/Resolver;
    .restart local v18    # "methodName":Ljava/lang/String;
    .restart local p2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    .line 450
    new-instance v3, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no detail message in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 452
    :cond_d
    new-instance v3, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 16
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getNameAsString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lorg/checkerframework/javacutil/Resolver;

    iget-object v4, v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/Resolver;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 290
    .local v3, "resolver":Lorg/checkerframework/javacutil/Resolver;
    iget-boolean v4, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->parsingMember:Z

    if-nez v4, :cond_0

    const-string v4, "_param_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    invoke-static {v2, v1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->getParameterReceiver(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    return-object v4

    .line 294
    :cond_0
    iget-boolean v4, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->parsingMember:Z

    if-nez v4, :cond_2

    iget-boolean v4, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->useLocalScope:Z

    if-eqz v4, :cond_2

    .line 297
    iget-object v4, v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/javacutil/Resolver;->findLocalVariableOrParameterOrField(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/VariableElement;

    move-result-object v4

    .line 298
    .local v4, "varElem":Ljavax/lang/model/element/VariableElement;
    if-eqz v4, :cond_2

    .line 299
    invoke-interface {v4}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v5, v6, :cond_1

    .line 300
    iget-object v5, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    instance-of v5, v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    .line 301
    .local v5, "isOriginalReceiver":Z
    invoke-static {v2, v1, v5, v4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->getReceiverField(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;ZLjavax/lang/model/element/VariableElement;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    return-object v6

    .line 303
    .end local v5    # "isOriginalReceiver":Z
    :cond_1
    new-instance v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-direct {v5, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;-><init>(Ljavax/lang/model/element/Element;)V

    return-object v5

    .line 309
    .end local v4    # "varElem":Ljavax/lang/model/element/VariableElement;
    :cond_2
    iget-object v4, v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 310
    .local v4, "receiverType":Ljavax/lang/model/type/TypeMirror;
    const/4 v5, 0x1

    .line 311
    .local v5, "originalReceiver":Z
    const/4 v6, 0x0

    .line 313
    .local v6, "fieldElem":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_3

    const-string v7, "length"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 314
    iget-object v7, v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    invoke-virtual {v3, v2, v4, v7}, Lorg/checkerframework/javacutil/Resolver;->findField(Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/VariableElement;

    move-result-object v6

    .line 318
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_5

    .line 319
    iget-object v7, v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    invoke-virtual {v3, v2, v4, v7}, Lorg/checkerframework/javacutil/Resolver;->findField(Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/VariableElement;

    move-result-object v6

    .line 320
    if-eqz v6, :cond_4

    .line 321
    goto :goto_1

    .line 323
    :cond_4
    move-object v7, v4

    check-cast v7, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v7}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$300(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 324
    const/4 v5, 0x0

    goto :goto_0

    .line 327
    :cond_5
    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v8, v9, :cond_8

    .line 328
    nop

    .line 329
    invoke-static {v2, v1, v5, v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->getReceiverField(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;ZLjavax/lang/model/element/VariableElement;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 330
    .local v8, "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    nop

    .line 331
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v9

    invoke-virtual {v9}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/javacutil/TypesUtils;->getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v9

    .line 332
    .local v9, "scopeClassElement":Ljavax/lang/model/element/TypeElement;
    if-nez v5, :cond_7

    .line 333
    invoke-static {v6}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 334
    invoke-static {v9}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_2

    .line 335
    :cond_6
    new-instance v10, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 336
    const-string v11, "a non-static field can\'t be referenced from a static inner class or enum"

    invoke-static {v2, v11}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v11

    invoke-direct {v10, v11, v7}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v10

    .line 340
    :cond_7
    :goto_2
    return-object v8

    .line 344
    .end local v8    # "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v9    # "scopeClassElement":Ljavax/lang/model/element/TypeElement;
    :cond_8
    iget-object v8, v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    invoke-virtual {v3, v2, v8}, Lorg/checkerframework/javacutil/Resolver;->findClass(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/Element;

    move-result-object v8

    .line 345
    .local v8, "classElem":Ljavax/lang/model/element/Element;
    invoke-static {v8}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    .line 346
    .local v9, "classType":Ljavax/lang/model/type/TypeMirror;
    if-eqz v9, :cond_9

    .line 347
    new-instance v7, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v7, v9}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v7

    .line 350
    :cond_9
    iget-object v10, v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->path:Lcom/sun/source/util/TreePath;

    invoke-static {v10}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v10

    .line 351
    .local v10, "enclMethod":Lcom/sun/source/tree/MethodTree;
    if-eqz v10, :cond_b

    .line 352
    invoke-interface {v10}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v11

    .line 353
    .local v11, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_b

    .line 354
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v13}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v13

    invoke-interface {v13, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 353
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 355
    :cond_a
    new-instance v13, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    add-int/lit8 v14, v12, 0x1

    .line 360
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14, v2}, [Ljava/lang/Object;

    move-result-object v14

    .line 358
    const-string v15, "Use \"#%d\" rather than \"%s\""

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 356
    invoke-static {v2, v14}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v14

    invoke-direct {v13, v14, v7}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v13

    .line 366
    .end local v11    # "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    .end local v12    # "i":I
    :cond_b
    new-instance v11, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    const-string v12, "identifier not found"

    invoke-static {v2, v12}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v12

    invoke-direct {v11, v12, v7}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v11
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 3
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 198
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1}, Ljavax/lang/model/util/Types;->getNullType()Ljavax/lang/model/type/NullType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 3
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 223
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 224
    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/javacutil/TypesUtils;->typeFromClass(Ljava/lang/Class;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 225
    .local v0, "stringTM":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 242
    iget-object v0, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v1, p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 243
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->directSupertypes(Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "superTypes":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    .line 247
    .local v2, "t":Ljavax/lang/model/type/TypeMirror;
    instance-of v3, v2, Lcom/sun/tools/javac/code/Type$ClassType;

    if-nez v3, :cond_0

    .line 248
    goto :goto_0

    .line 250
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 251
    .local v3, "tt":Lcom/sun/tools/javac/code/Type$ClassType;
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type$ClassType;->isInterface()Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v1

    .line 254
    .end local v2    # "t":Ljavax/lang/model/type/TypeMirror;
    .end local v3    # "tt":Lcom/sun/tools/javac/code/Type$ClassType;
    :cond_1
    goto :goto_0

    .line 256
    :cond_2
    new-instance v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;

    .line 257
    const-string v2, "super"

    const-string v3, "super class not found"

    invoke-static {v2, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;-><init>(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$1;)V

    throw v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 231
    iget-object v0, p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    iget-object v1, p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v0
.end method
