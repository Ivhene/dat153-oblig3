.class public Lnet/bytebuddy/description/method/ParameterList$Explicit;
.super Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/method/ParameterDescription;",
        ">",
        "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final parameterDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TS;>;"
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
            "+TS;>;)V"
        }
    .end annotation

    .line 418
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Explicit;, "Lnet/bytebuddy/description/method/ParameterList$Explicit<TS;>;"
    .local p1, "parameterDescriptions":Ljava/util/List;, "Ljava/util/List<+TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;-><init>()V

    .line 419
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit;->parameterDescriptions:Ljava/util/List;

    .line 420
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/method/ParameterDescription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)V"
        }
    .end annotation

    .line 410
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Explicit;, "Lnet/bytebuddy/description/method/ParameterList$Explicit<TS;>;"
    .local p1, "parameterDescription":[Lnet/bytebuddy/description/method/ParameterDescription;, "[TS;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/method/ParameterList$Explicit;-><init>(Ljava/util/List;)V

    .line 411
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 396
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Explicit;, "Lnet/bytebuddy/description/method/ParameterList$Explicit<TS;>;"
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterList$Explicit;->get(I)Lnet/bytebuddy/description/method/ParameterDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/ParameterDescription;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 426
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Explicit;, "Lnet/bytebuddy/description/method/ParameterList$Explicit<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit;->parameterDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 433
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Explicit;, "Lnet/bytebuddy/description/method/ParameterList$Explicit<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$Explicit;->parameterDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
