.class Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;
.super Ljavax/lang/model/util/SimpleTypeVisitor7;
.source "FormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->getInvocationType()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor7<",
        "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;",
        "Ljava/lang/Class<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;

.field final synthetic val$first:Lcom/sun/source/tree/ExpressionTree;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;Lcom/sun/source/tree/ExpressionTree;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;

    .line 230
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;->this$1:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;

    iput-object p2, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;->val$first:Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor7;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    .locals 1
    .param p1, "e"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;"
        }
    .end annotation

    .line 235
    .local p2, "p":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->VARARG:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    return-object v0
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    .locals 2
    .param p1, "t"    # Ljavax/lang/model/type/ArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/ArrayType;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;"
        }
    .end annotation

    .line 242
    .local p2, "p":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;->val$first:Lcom/sun/source/tree/ExpressionTree;

    new-instance v1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1$1;-><init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;)V

    invoke-interface {v0, v1, p2}, Lcom/sun/source/tree/ExpressionTree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    return-object v0
.end method

.method public bridge synthetic visitNull(Ljavax/lang/model/type/NullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$1;->visitNull(Ljavax/lang/model/type/NullType;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    move-result-object p1

    return-object p1
.end method

.method public visitNull(Ljavax/lang/model/type/NullType;Ljava/lang/Class;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/NullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/NullType;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;"
        }
    .end annotation

    .line 272
    .local p2, "p":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->NULLARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    return-object v0
.end method
