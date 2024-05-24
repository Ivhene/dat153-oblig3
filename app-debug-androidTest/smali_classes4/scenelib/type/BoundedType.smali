.class public Lscenelib/type/BoundedType;
.super Lscenelib/type/Type;
.source "BoundedType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscenelib/type/BoundedType$BoundKind;
    }
.end annotation


# instance fields
.field private bound:Lscenelib/type/DeclaredType;

.field private boundKind:Lscenelib/type/BoundedType$BoundKind;

.field private name:Lscenelib/type/DeclaredType;


# direct methods
.method public constructor <init>(Lscenelib/type/DeclaredType;Lcom/sun/tools/javac/code/BoundKind;Lscenelib/type/DeclaredType;)V
    .locals 1
    .param p1, "name"    # Lscenelib/type/DeclaredType;
    .param p2, "boundKind"    # Lcom/sun/tools/javac/code/BoundKind;
    .param p3, "bound"    # Lscenelib/type/DeclaredType;

    .line 88
    invoke-static {p2}, Lscenelib/type/BoundedType;->javacBoundKindToBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lscenelib/type/BoundedType$BoundKind;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lscenelib/type/BoundedType;-><init>(Lscenelib/type/DeclaredType;Lscenelib/type/BoundedType$BoundKind;Lscenelib/type/DeclaredType;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lscenelib/type/DeclaredType;Lscenelib/type/BoundedType$BoundKind;Lscenelib/type/DeclaredType;)V
    .locals 0
    .param p1, "name"    # Lscenelib/type/DeclaredType;
    .param p2, "boundKind"    # Lscenelib/type/BoundedType$BoundKind;
    .param p3, "bound"    # Lscenelib/type/DeclaredType;

    .line 64
    invoke-direct {p0}, Lscenelib/type/Type;-><init>()V

    .line 65
    iput-object p1, p0, Lscenelib/type/BoundedType;->name:Lscenelib/type/DeclaredType;

    .line 66
    iput-object p2, p0, Lscenelib/type/BoundedType;->boundKind:Lscenelib/type/BoundedType$BoundKind;

    .line 67
    iput-object p3, p0, Lscenelib/type/BoundedType;->bound:Lscenelib/type/DeclaredType;

    .line 68
    return-void
.end method

.method private static javacBoundKindToBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lscenelib/type/BoundedType$BoundKind;
    .locals 2
    .param p0, "boundKind"    # Lcom/sun/tools/javac/code/BoundKind;

    .line 71
    sget-object v0, Lscenelib/type/BoundedType$1;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/BoundKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 75
    :pswitch_0
    sget-object v0, Lscenelib/type/BoundedType$BoundKind;->SUPER:Lscenelib/type/BoundedType$BoundKind;

    return-object v0

    .line 73
    :pswitch_1
    sget-object v0, Lscenelib/type/BoundedType$BoundKind;->EXTENDS:Lscenelib/type/BoundedType$BoundKind;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addAnnotation(Ljava/lang/String;)V
    .locals 2
    .param p1, "annotation"    # Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BoundedType cannot have annotations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnnotation(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BoundedType cannot have annotations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BoundedType cannot have annotations."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBound()Lscenelib/type/Type;
    .locals 1

    .line 107
    iget-object v0, p0, Lscenelib/type/BoundedType;->bound:Lscenelib/type/DeclaredType;

    return-object v0
.end method

.method public getBoundKind()Lscenelib/type/BoundedType$BoundKind;
    .locals 1

    .line 115
    iget-object v0, p0, Lscenelib/type/BoundedType;->boundKind:Lscenelib/type/BoundedType$BoundKind;

    return-object v0
.end method

.method public getKind()Lscenelib/type/Type$Kind;
    .locals 1

    .line 120
    sget-object v0, Lscenelib/type/Type$Kind;->BOUNDED:Lscenelib/type/Type$Kind;

    return-object v0
.end method

.method public getName()Lscenelib/type/DeclaredType;
    .locals 1

    .line 99
    iget-object v0, p0, Lscenelib/type/BoundedType;->name:Lscenelib/type/DeclaredType;

    return-object v0
.end method
