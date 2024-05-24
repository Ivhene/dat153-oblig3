.class public abstract Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;
.super Ljava/lang/Object;
.source "MethodGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;,
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;,
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final internalName:Ljava/lang/String;

.field protected final parameterCount:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "internalName"    # Ljava/lang/String;
    .param p2, "parameterCount"    # I

    .line 858
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;, "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->internalName:Ljava/lang/String;

    .line 860
    iput p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->parameterCount:I

    .line 861
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 877
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;, "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key<TS;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 878
    return v0

    .line 879
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 880
    return v2

    .line 882
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;

    .line 883
    .local v1, "key":Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;
    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->internalName:Ljava/lang/String;

    iget-object v4, v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->internalName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->parameterCount:I

    iget v4, v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->parameterCount:I

    if-ne v3, v4, :cond_2

    .line 885
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->getIdentifiers()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->getIdentifiers()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 883
    :goto_0
    return v0
.end method

.method protected abstract getIdentifiers()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TS;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 2

    .line 872
    .local p0, "this":Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;, "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->internalName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->parameterCount:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
