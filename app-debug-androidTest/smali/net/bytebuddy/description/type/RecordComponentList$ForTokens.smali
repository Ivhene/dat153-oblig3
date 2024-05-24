.class public Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;
.super Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;
.source "RecordComponentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTokens"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<",
        "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$Token;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p2, "tokens":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/RecordComponentDescription$Token;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;-><init>()V

    .line 224
    iput-object p1, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 225
    iput-object p2, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;->tokens:Ljava/util/List;

    .line 226
    return-void
.end method

.method public varargs constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V
    .locals 1
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "token"    # [Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    .line 214
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    .line 215
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;->get(I)Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;
    .locals 3
    .param p1, "index"    # I

    .line 230
    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentDescription$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;->tokens:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/RecordComponentDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 235
    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
