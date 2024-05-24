.class Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$2;
.super Ljavax/lang/model/util/SimpleTypeVisitor7;
.source "FormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->isParameterNull(Ljavax/lang/model/type/TypeMirror;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor7<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Class<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;

    .line 337
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$2;->this$1:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor7;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "e"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 341
    .local p2, "p":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 337
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$2;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNull(Ljavax/lang/model/type/NullType;Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "t"    # Ljavax/lang/model/type/NullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/NullType;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 347
    .local p2, "p":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull(Ljavax/lang/model/type/NullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 337
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall$2;->visitNull(Ljavax/lang/model/type/NullType;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
