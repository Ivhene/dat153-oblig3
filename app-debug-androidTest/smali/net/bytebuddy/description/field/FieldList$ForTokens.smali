.class public Lnet/bytebuddy/description/field/FieldList$ForTokens;
.super Lnet/bytebuddy/description/field/FieldList$AbstractBase;
.source "FieldList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTokens"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/field/FieldList$AbstractBase<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/field/FieldDescription$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .param p1, "declaringType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/field/FieldDescription$Token;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p2, "tokens":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/field/FieldDescription$Token;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;-><init>()V

    .line 207
    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldList$ForTokens;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 208
    iput-object p2, p0, Lnet/bytebuddy/description/field/FieldList$ForTokens;->tokens:Ljava/util/List;

    .line 209
    return-void
.end method

.method public varargs constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/field/FieldDescription$Token;)V
    .locals 1
    .param p1, "declaringType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "token"    # [Lnet/bytebuddy/description/field/FieldDescription$Token;

    .line 197
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/field/FieldList$ForTokens;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    .line 198
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/field/FieldList$ForTokens;->get(I)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 3
    .param p1, "index"    # I

    .line 215
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldList$ForTokens;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/field/FieldList$ForTokens;->tokens:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/field/FieldDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription$Token;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 222
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldList$ForTokens;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
