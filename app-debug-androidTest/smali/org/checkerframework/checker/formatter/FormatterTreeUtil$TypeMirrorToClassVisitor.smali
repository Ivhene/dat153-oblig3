.class Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor7;
.source "FormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatterTreeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeMirrorToClassVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor7<",
        "Ljava/lang/Class<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Class<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor7;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/checker/formatter/FormatterTreeUtil$1;

    .line 418
    invoke-direct {p0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p1, "dt"    # Ljavax/lang/model/type/DeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/DeclaredType;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 446
    .local p2, "v":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor$1;-><init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;)V

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 447
    invoke-interface {v0, v1, v2}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 446
    return-object v0
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 418
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p1, "t"    # Ljavax/lang/model/type/PrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 422
    .local p2, "v":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Ljavax/lang/model/type/PrimitiveType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 440
    const/4 v0, 0x0

    return-object v0

    .line 438
    :pswitch_0
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 436
    :pswitch_1
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 434
    :pswitch_2
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 432
    :pswitch_3
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 430
    :pswitch_4
    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 428
    :pswitch_5
    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 426
    :pswitch_6
    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 424
    :pswitch_7
    const-class v0, Ljava/lang/Boolean;

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

.method public bridge synthetic visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 418
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$TypeMirrorToClassVisitor;->visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
