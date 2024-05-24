.class public Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;
.super Ljava/lang/Object;
.source "EqualsMethod.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CompoundComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final comparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;>;)V"
        }
    .end annotation

    .line 1053
    .local p1, "comparators":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Comparator<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    .line 1055
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    .line 1056
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    instance-of v2, v1, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;

    if-eqz v2, :cond_0

    .line 1057
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;

    iget-object v3, v3, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1058
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    if-nez v2, :cond_1

    .line 1059
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 1062
    :cond_2
    return-void
.end method

.method protected varargs constructor <init>([Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)V"
        }
    .end annotation

    .line 1045
    .local p1, "comparator":[Ljava/util/Comparator;, "[Ljava/util/Comparator<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;-><init>(Ljava/util/List;)V

    .line 1046
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1029
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I
    .locals 3
    .param p1, "left"    # Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .param p2, "right"    # Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 1068
    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    .line 1069
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 1070
    .local v2, "comparison":I
    if-eqz v2, :cond_0

    .line 1071
    return v2

    .line 1073
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .end local v2    # "comparison":I
    :cond_0
    goto :goto_0

    .line 1074
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;

    iget-object p1, p1, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;->comparators:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
