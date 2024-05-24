.class public Lnet/bytebuddy/utility/JavaConstant$Simple$OfTypeDescription;
.super Lnet/bytebuddy/utility/JavaConstant$Simple;
.source "JavaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfTypeDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/utility/JavaConstant$Simple<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 1
    .param p1, "value"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 477
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    .line 478
    return-void
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/utility/JavaConstant$Visitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/utility/JavaConstant$Visitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 491
    .local p1, "visitor":Lnet/bytebuddy/utility/JavaConstant$Visitor;, "Lnet/bytebuddy/utility/JavaConstant$Visitor<TT;>;"
    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$Visitor;->onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toDescription()Ljava/lang/Object;
    .locals 2

    .line 484
    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTypeDescription;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTypeDescription;->value:Ljava/lang/Object;

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
