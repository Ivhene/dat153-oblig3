.class public abstract Lcom/android/dx/rop/cst/Constant;
.super Ljava/lang/Object;
.source "Constant.java"

# interfaces
.implements Lcom/android/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dx/util/ToHuman;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/rop/cst/Constant;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/dx/rop/cst/Constant;)I
    .locals 4
    .param p1, "other"    # Lcom/android/dx/rop/cst/Constant;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, "otherClazz":Ljava/lang/Class;
    if-eq v0, v1, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/Constant;->compareTo0(Lcom/android/dx/rop/cst/Constant;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/Constant;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method protected abstract compareTo0(Lcom/android/dx/rop/cst/Constant;)I
.end method

.method public abstract isCategory2()Z
.end method

.method public abstract typeName()Ljava/lang/String;
.end method
