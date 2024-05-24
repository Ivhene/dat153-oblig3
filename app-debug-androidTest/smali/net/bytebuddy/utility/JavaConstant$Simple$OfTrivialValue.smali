.class public Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;
.super Lnet/bytebuddy/utility/JavaConstant$Simple;
.source "JavaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfTrivialValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/utility/JavaConstant$Simple<",
        "TS;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0
    .param p2, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")V"
        }
    .end annotation

    .line 448
    .local p0, "this":Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;, "Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue<TS;>;"
    .local p1, "value":Ljava/lang/Object;, "TS;"
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/utility/JavaConstant$Simple;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    .line 449
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

    .line 462
    .local p0, "this":Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;, "Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue<TS;>;"
    .local p1, "visitor":Lnet/bytebuddy/utility/JavaConstant$Visitor;, "Lnet/bytebuddy/utility/JavaConstant$Visitor<TT;>;"
    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$Visitor;->onValue(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toDescription()Ljava/lang/Object;
    .locals 1

    .line 455
    .local p0, "this":Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;, "Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;->value:Ljava/lang/Object;

    return-object v0
.end method
