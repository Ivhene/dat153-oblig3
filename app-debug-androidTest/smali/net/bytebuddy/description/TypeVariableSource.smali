.class public interface abstract Lnet/bytebuddy/description/TypeVariableSource;
.super Ljava/lang/Object;
.source "TypeVariableSource.java"

# interfaces
.implements Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/TypeVariableSource$AbstractBase;,
        Lnet/bytebuddy/description/TypeVariableSource$Visitor;
    }
.end annotation


# static fields
.field public static final UNDEFINED:Lnet/bytebuddy/description/TypeVariableSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/description/TypeVariableSource;->UNDEFINED:Lnet/bytebuddy/description/TypeVariableSource;

    return-void
.end method


# virtual methods
.method public abstract accept(Lnet/bytebuddy/description/TypeVariableSource$Visitor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/TypeVariableSource$Visitor<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract findVariable(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method

.method public abstract getEnclosingSource()Lnet/bytebuddy/description/TypeVariableSource;
.end method

.method public abstract getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
.end method

.method public abstract isGenerified()Z
.end method

.method public abstract isInferrable()Z
.end method
