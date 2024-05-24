.class public Lnet/bytebuddy/description/method/MethodList$Explicit;
.super Lnet/bytebuddy/description/method/MethodList$AbstractBase;
.source "MethodList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/method/MethodDescription;",
        ">",
        "Lnet/bytebuddy/description/method/MethodList$AbstractBase<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final methodDescriptions:Ljava/util/List;
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

    .line 219
    .local p0, "this":Lnet/bytebuddy/description/method/MethodList$Explicit;, "Lnet/bytebuddy/description/method/MethodList$Explicit<TS;>;"
    .local p1, "methodDescriptions":Ljava/util/List;, "Ljava/util/List<+TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodList$AbstractBase;-><init>()V

    .line 220
    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodList$Explicit;->methodDescriptions:Ljava/util/List;

    .line 221
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)V"
        }
    .end annotation

    .line 211
    .local p0, "this":Lnet/bytebuddy/description/method/MethodList$Explicit;, "Lnet/bytebuddy/description/method/MethodList$Explicit<TS;>;"
    .local p1, "methodDescription":[Lnet/bytebuddy/description/method/MethodDescription;, "[TS;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/method/MethodList$Explicit;-><init>(Ljava/util/List;)V

    .line 212
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 197
    .local p0, "this":Lnet/bytebuddy/description/method/MethodList$Explicit;, "Lnet/bytebuddy/description/method/MethodList$Explicit<TS;>;"
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodList$Explicit;->get(I)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lnet/bytebuddy/description/method/MethodList$Explicit;, "Lnet/bytebuddy/description/method/MethodList$Explicit<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodList$Explicit;->methodDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 234
    .local p0, "this":Lnet/bytebuddy/description/method/MethodList$Explicit;, "Lnet/bytebuddy/description/method/MethodList$Explicit<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodList$Explicit;->methodDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
