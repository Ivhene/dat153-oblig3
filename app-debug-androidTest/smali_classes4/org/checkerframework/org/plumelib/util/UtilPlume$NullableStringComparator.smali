.class public Lorg/checkerframework/org/plumelib/util/UtilPlume$NullableStringComparator;
.super Ljava/lang/Object;
.source "UtilPlume.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/UtilPlume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullableStringComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1337a1cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1897
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/UtilPlume$NullableStringComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1903
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1904
    const/4 v0, 0x0

    return v0

    .line 1906
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1907
    const/4 v0, 0x1

    return v0

    .line 1909
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 1910
    const/4 v0, -0x1

    return v0

    .line 1912
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
