.class public Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;
.super Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;
.source "TypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList$Generic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation


# instance fields
.field private final typeDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p1, "typeDefinitions":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDefinition;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;-><init>()V

    .line 371
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;->typeDefinitions:Ljava/util/List;

    .line 372
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 1
    .param p1, "typeDefinition"    # [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 362
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    .line 363
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;->get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .param p1, "index"    # I

    .line 378
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;->typeDefinitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 385
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;->typeDefinitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
