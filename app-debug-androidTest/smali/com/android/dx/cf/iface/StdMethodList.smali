.class public final Lcom/android/dx/cf/iface/StdMethodList;
.super Lcom/android/dx/util/FixedSizeList;
.source "StdMethodList.java"

# interfaces
.implements Lcom/android/dx/cf/iface/MethodList;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/dx/cf/iface/Method;
    .locals 1
    .param p1, "n"    # I

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/iface/StdMethodList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/iface/Method;

    return-object v0
.end method

.method public set(ILcom/android/dx/cf/iface/Method;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "method"    # Lcom/android/dx/cf/iface/Method;

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/cf/iface/StdMethodList;->set0(ILjava/lang/Object;)V

    .line 49
    return-void
.end method
