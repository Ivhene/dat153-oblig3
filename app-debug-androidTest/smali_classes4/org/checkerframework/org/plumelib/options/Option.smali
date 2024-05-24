.class public interface abstract annotation Lorg/checkerframework/org/plumelib/options/Option;
.super Ljava/lang/Object;
.source "Option.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/checkerframework/org/plumelib/options/Option;
        aliases = {}
        noDocDefault = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/IgnoreInWholeProgramInference;
.end annotation


# virtual methods
.method public abstract aliases()[Ljava/lang/String;
.end method

.method public abstract noDocDefault()Z
.end method

.method public abstract value()Ljava/lang/String;
.end method
