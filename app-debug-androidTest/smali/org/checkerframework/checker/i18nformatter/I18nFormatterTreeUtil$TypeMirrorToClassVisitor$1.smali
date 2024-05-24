.class Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor$1;
.super Ljavax/lang/model/util/SimpleElementVisitor7;
.source "I18nFormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Class;)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleElementVisitor7<",
        "Ljava/lang/Class<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Class<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;

    .line 495
    iput-object p1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor$1;->this$0:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleElementVisitor7;-><init>()V

    return-void
.end method


# virtual methods
.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p1, "e"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 503
    .local p2, "v":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Void;>;"
    :try_start_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "cname":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 505
    .end local v0    # "cname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 495
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$TypeMirrorToClassVisitor$1;->visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
