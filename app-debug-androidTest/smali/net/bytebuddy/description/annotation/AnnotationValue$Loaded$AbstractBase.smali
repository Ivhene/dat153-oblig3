.class public abstract Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;
.super Ljava/lang/Object;
.source "AnnotationValue.java"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase$ForUnresolvedProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
        "TW;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 480
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<TW;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TX;>;)TX;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<TW;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TX;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;->resolve()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
