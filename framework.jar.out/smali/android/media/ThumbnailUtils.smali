.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$1;,
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field public static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4000

.field public static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 418
    if-nez p0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 420
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 352
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 353
    .local v4, w:D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .line 355
    .local v0, h:D
    if-ne p2, v10, :cond_0

    move v2, v11

    .line 357
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v10, :cond_1

    const/16 v6, 0x80

    move v3, v6

    .line 361
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_2

    move v6, v2

    .line 372
    :goto_2
    return v6

    .line 355
    .end local v2           #lowerBound:I
    .end local v3           #upperBound:I
    :cond_0
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v2, v6

    goto :goto_0

    .line 357
    .restart local v2       #lowerBound:I
    :cond_1
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    move v3, v6

    goto :goto_1

    .line 366
    .restart local v3       #upperBound:I
    :cond_2
    if-ne p2, v10, :cond_3

    if-ne p1, v10, :cond_3

    move v6, v11

    .line 368
    goto :goto_2

    .line 369
    :cond_3
    if-ne p1, v10, :cond_4

    move v6, v2

    .line 370
    goto :goto_2

    :cond_4
    move v6, v3

    .line 372
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 334
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 338
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 339
    const/4 v1, 0x1

    .line 340
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 341
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 347
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "filePath"
    .parameter "kind"

    .prologue
    .line 102
    const-string v0, "ro.config.hwdrm"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 103
    .local v4, hasDrmConfig:Z
    const/4 v3, 0x0

    .line 104
    .local v3, isDrm:Z
    const/4 v2, 0x0

    .line 105
    .local v2, drmDecodePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 106
    .local v0, dc:Landroid/hwdrm/drm1/HWDrmContent;
    if-eqz v4, :cond_c

    .line 108
    :try_start_0
    new-instance v1, Landroid/hwdrm/drm1/HWDrmContent;

    invoke-direct {v1, p0}, Landroid/hwdrm/drm1/HWDrmContent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hwdrm/drm1/HWDrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .local v1, dc:Landroid/hwdrm/drm1/HWDrmContent;
    if-eqz v1, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmContent;->isDrmFile()Z

    move-result v0

    .end local v3           #isDrm:Z
    .local v0, isDrm:Z
    move v3, v0

    .line 113
    .end local v0           #isDrm:Z
    .restart local v3       #isDrm:Z
    :cond_0
    if-eqz v3, :cond_d

    .line 114
    const/4 v0, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/hwdrm/drm1/HWDrmContent;->startConsume(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/hwdrm/drm1/HWDrmException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    .end local v2           #drmDecodePath:Ljava/lang/String;
    .local v0, drmDecodePath:Ljava/lang/String;
    :goto_0
    move-object v2, v0

    .end local v0           #drmDecodePath:Ljava/lang/String;
    .restart local v2       #drmDecodePath:Ljava/lang/String;
    move v5, v3

    .line 126
    .end local v3           #isDrm:Z
    .local v5, isDrm:Z
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    .line 127
    .local v0, wantMini:Z
    :goto_2
    if-eqz v0, :cond_4

    const/16 v3, 0x140

    move v8, v3

    .line 130
    .local v8, targetSize:I
    :goto_3
    if-eqz v0, :cond_5

    const/high16 v0, 0x3

    move v6, v0

    .line 133
    .end local v0           #wantMini:Z
    .local v6, maxPixels:I
    :goto_4
    new-instance v7, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .line 134
    .local v7, sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v0, 0x0

    .line 136
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 137
    invoke-static {v2}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v3

    .line 138
    .local v3, fileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v3, :cond_1

    iget v9, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_1

    .line 139
    invoke-static {v2, v8, v6, v7}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 140
    iget-object v0, v7, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 151
    :cond_1
    :goto_5
    if-nez v0, :cond_b

    .line 152
    const/4 v3, 0x0

    .line 154
    .local v3, fd:Ljava/io/FileDescriptor;
    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    .line 155
    :try_start_2
    new-instance p0, Ljava/io/FileInputStream;

    .end local p0
    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p0

    .line 160
    .end local v3           #fd:Ljava/io/FileDescriptor;
    .end local v7           #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .local p0, fd:Ljava/io/FileDescriptor;
    :goto_6
    :try_start_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 162
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    const/4 v7, 0x0

    invoke-static {p0, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 164
    iget-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v7, :cond_2

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v9, -0x1

    if-ne v7, v9, :cond_8

    .line 166
    :cond_2
    const/4 p0, 0x0

    .end local p0           #fd:Ljava/io/FileDescriptor;
    move-object p1, v2

    .end local v2           #drmDecodePath:Ljava/lang/String;
    .local p1, drmDecodePath:Ljava/lang/String;
    move v0, v5

    .end local v5           #isDrm:Z
    .local v0, isDrm:Z
    move-object v11, v1

    .end local v1           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .local v11, dc:Landroid/hwdrm/drm1/HWDrmContent;
    move-object v1, p0

    move-object p0, v11

    .line 195
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #maxPixels:I
    .end local v8           #targetSize:I
    .end local v11           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .local p0, dc:Landroid/hwdrm/drm1/HWDrmContent;
    :goto_7
    return-object v1

    .line 117
    .local v0, dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v2       #drmDecodePath:Ljava/lang/String;
    .local v3, isDrm:Z
    .local p0, filePath:Ljava/lang/String;
    .local p1, kind:I
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Landroid/hwdrm/drm1/HWDrmException;
    :goto_8
    const-string v5, "ThumbnailUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception in get decode path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .end local v1           #e:Landroid/hwdrm/drm1/HWDrmException;
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v0, :cond_c

    .line 120
    invoke-virtual {v0}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    .line 121
    const/4 p0, 0x0

    move-object p1, v2

    .end local v2           #drmDecodePath:Ljava/lang/String;
    .local p1, drmDecodePath:Ljava/lang/String;
    move-object v1, p0

    move-object p0, v0

    .end local v0           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .local p0, dc:Landroid/hwdrm/drm1/HWDrmContent;
    move v0, v3

    .end local v3           #isDrm:Z
    .local v0, isDrm:Z
    goto :goto_7

    .line 126
    .end local v0           #isDrm:Z
    .local v1, dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v2       #drmDecodePath:Ljava/lang/String;
    .restart local v5       #isDrm:Z
    .local p0, filePath:Ljava/lang/String;
    .local p1, kind:I
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 127
    .local v0, wantMini:Z
    :cond_4
    const/16 v3, 0x60

    move v8, v3

    goto/16 :goto_3

    .line 130
    .restart local v8       #targetSize:I
    :cond_5
    const/16 v0, 0x4000

    move v6, v0

    goto/16 :goto_4

    .line 144
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #maxPixels:I
    .restart local v7       #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    :cond_6
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v3

    .line 145
    .local v3, fileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v3, :cond_1

    iget v9, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_1

    .line 146
    invoke-static {p0, v8, v6, v7}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 147
    iget-object v0, v7, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 158
    .local v3, fd:Ljava/io/FileDescriptor;
    :cond_7
    :try_start_4
    new-instance v7, Ljava/io/FileInputStream;

    .end local v7           #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object p0

    .end local v3           #fd:Ljava/io/FileDescriptor;
    .local p0, fd:Ljava/io/FileDescriptor;
    goto :goto_6

    .line 168
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    :cond_8
    :try_start_5
    invoke-static {v3, v8, v6}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    .end local v6           #maxPixels:I
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 170
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 172
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 173
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 174
    const/4 v6, 0x0

    invoke-static {p0, v6, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object p0

    .line 182
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_9
    if-eqz v4, :cond_9

    .line 183
    if-eqz v1, :cond_9

    .line 184
    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    .line 189
    :cond_9
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 191
    const/16 p1, 0x60

    const/16 v0, 0x60

    const/4 v3, 0x2

    invoke-static {p0, p1, v0, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .end local p1           #kind:I
    move-result-object p0

    :cond_a
    move-object p1, v2

    .end local v2           #drmDecodePath:Ljava/lang/String;
    .local p1, drmDecodePath:Ljava/lang/String;
    move v0, v5

    .end local v5           #isDrm:Z
    .local v0, isDrm:Z
    move-object v11, v1

    .end local v1           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v11       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    move-object v1, p0

    move-object p0, v11

    .line 195
    .end local v11           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .local p0, dc:Landroid/hwdrm/drm1/HWDrmContent;
    goto :goto_7

    .line 175
    .end local p0           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v2       #drmDecodePath:Ljava/lang/String;
    .local v3, fd:Ljava/io/FileDescriptor;
    .restart local v5       #isDrm:Z
    .restart local v6       #maxPixels:I
    .local p1, kind:I
    :catch_1
    move-exception p0

    .line 176
    .end local v6           #maxPixels:I
    .local p0, e:Ljava/lang/OutOfMemoryError;
    :goto_a
    const-string v3, "ThumbnailUtils"

    .end local v3           #fd:Ljava/io/FileDescriptor;
    const-string v6, ""

    invoke-static {v3, v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    .line 179
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_9

    .line 177
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #fd:Ljava/io/FileDescriptor;
    .restart local v6       #maxPixels:I
    :catch_2
    move-exception p0

    .line 178
    .end local v6           #maxPixels:I
    .local p0, ex:Ljava/io/IOException;
    :goto_b
    const-string v3, "ThumbnailUtils"

    .end local v3           #fd:Ljava/io/FileDescriptor;
    const-string v6, ""

    invoke-static {v3, v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local p0           #ex:Ljava/io/IOException;
    :cond_b
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_9

    .line 177
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .local p0, fd:Ljava/io/FileDescriptor;
    :catch_3
    move-exception v3

    move-object v11, v3

    move-object v3, p0

    .end local p0           #fd:Ljava/io/FileDescriptor;
    .restart local v3       #fd:Ljava/io/FileDescriptor;
    move-object p0, v11

    goto :goto_b

    .line 175
    .end local v3           #fd:Ljava/io/FileDescriptor;
    .restart local p0       #fd:Ljava/io/FileDescriptor;
    :catch_4
    move-exception v3

    move-object v11, v3

    move-object v3, p0

    .end local p0           #fd:Ljava/io/FileDescriptor;
    .restart local v3       #fd:Ljava/io/FileDescriptor;
    move-object p0, v11

    goto :goto_a

    .line 117
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #isDrm:Z
    .end local v8           #targetSize:I
    .local v3, isDrm:Z
    .local p0, filePath:Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    .end local v1           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .local v0, dc:Landroid/hwdrm/drm1/HWDrmContent;
    move-object v1, v11

    goto/16 :goto_8

    :cond_c
    move-object v1, v0

    .end local v0           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v1       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    move v5, v3

    .end local v3           #isDrm:Z
    .restart local v5       #isDrm:Z
    goto/16 :goto_1

    .end local v5           #isDrm:Z
    .restart local v3       #isDrm:Z
    :cond_d
    move-object v0, v2

    .end local v2           #drmDecodePath:Ljava/lang/String;
    .local v0, drmDecodePath:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 6
    .parameter "filePath"
    .parameter "targetSize"
    .parameter "maxPixels"
    .parameter "sizedThumbBitmap"

    .prologue
    .line 555
    if-nez p0, :cond_1

    .line 603
    .end local p0
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 557
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    .line 558
    .local v0, exif:Landroid/media/ExifInterface;
    const/4 v2, 0x0

    .line 560
    .local v2, thumbData:[B
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v0           #exif:Landroid/media/ExifInterface;
    .local v1, exif:Landroid/media/ExifInterface;
    if-eqz v1, :cond_4

    .line 562
    :try_start_1
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .end local v2           #thumbData:[B
    .local v0, thumbData:[B
    :goto_1
    move-object v4, v0

    .end local v0           #thumbData:[B
    .local v4, thumbData:[B
    move-object v0, v1

    .line 568
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v0, exif:Landroid/media/ExifInterface;
    :goto_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 569
    .local v2, fullOptions:Landroid/graphics/BitmapFactory$Options;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0           #exif:Landroid/media/ExifInterface;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 570
    .local v0, exifOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    .line 571
    .local v1, exifThumbWidth:I
    const/4 v3, 0x0

    .line 574
    .local v3, fullThumbWidth:I
    if-eqz v4, :cond_2

    .line 575
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 576
    .end local v1           #exifThumbWidth:I
    const/4 v1, 0x0

    array-length v3, v4

    .end local v3           #fullThumbWidth:I
    invoke-static {v4, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 577
    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 578
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v3

    .line 582
    .restart local v1       #exifThumbWidth:I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 583
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 584
    invoke-static {v2, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    .end local p1
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 585
    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .end local p2
    div-int/2addr p1, p2

    .line 588
    .local p1, fullThumbWidth:I
    if-eqz v4, :cond_3

    if-lt v1, p1, :cond_3

    .line 589
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 590
    .local p1, width:I
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 591
    .local p0, height:I
    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 592
    const/4 p2, 0x0

    array-length v1, v4

    .end local v1           #exifThumbWidth:I
    invoke-static {v4, p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 594
    iget-object p2, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 595
    iput-object v4, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 596
    iput p1, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 597
    iput p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    goto :goto_0

    .line 564
    .end local v4           #thumbData:[B
    .local v0, exif:Landroid/media/ExifInterface;
    .local v2, thumbData:[B
    .local p0, filePath:Ljava/lang/String;
    .local p1, targetSize:I
    .restart local p2
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    .end local v0           #exif:Landroid/media/ExifInterface;
    .local v1, exif:Landroid/media/ExifInterface;
    move-object v0, v5

    .line 565
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    const-string v3, "ThumbnailUtils"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v2

    .end local v2           #thumbData:[B
    .restart local v4       #thumbData:[B
    move-object v0, v1

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v0, exif:Landroid/media/ExifInterface;
    goto :goto_2

    .line 600
    .end local p2
    .local v0, exifOptions:Landroid/graphics/BitmapFactory$Options;
    .local v1, exifThumbWidth:I
    .local v2, fullOptions:Landroid/graphics/BitmapFactory$Options;
    .local p1, fullThumbWidth:I
    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 601
    .end local p1           #fullThumbWidth:I
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0           #filePath:Ljava/lang/String;
    iput-object p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 564
    .end local v0           #exifOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #thumbData:[B
    .local v1, exif:Landroid/media/ExifInterface;
    .local v2, thumbData:[B
    .restart local p0       #filePath:Ljava/lang/String;
    .local p1, targetSize:I
    .restart local p2
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    .end local v2           #thumbData:[B
    .local v0, thumbData:[B
    goto :goto_1
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x60

    .line 207
    if-nez p0, :cond_0

    move-object v8, v12

    .line 271
    :goto_0
    return-object v8

    .line 212
    :cond_0
    const-string v8, "ro.config.hwdrm"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 213
    .local v5, hasDrmConfig:Z
    const/4 v6, 0x0

    .line 214
    .local v6, isDrm:Z
    const/4 v3, 0x0

    .line 215
    .local v3, drmDecodePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 216
    .local v1, dc:Landroid/hwdrm/drm1/HWDrmContent;
    if-eqz v5, :cond_3

    .line 218
    :try_start_0
    new-instance v2, Landroid/hwdrm/drm1/HWDrmContent;

    invoke-direct {v2, p0}, Landroid/hwdrm/drm1/HWDrmContent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hwdrm/drm1/HWDrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .local v2, dc:Landroid/hwdrm/drm1/HWDrmContent;
    if-eqz v2, :cond_1

    .line 220
    :try_start_1
    invoke-virtual {v2}, Landroid/hwdrm/drm1/HWDrmContent;->isDrmFile()Z

    move-result v6

    .line 222
    :cond_1
    if-eqz v6, :cond_2

    .line 223
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/hwdrm/drm1/HWDrmContent;->startConsume(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/hwdrm/drm1/HWDrmException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v3

    :cond_2
    move-object v1, v2

    .line 237
    .end local v2           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v1       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    :cond_3
    const/4 v0, 0x0

    .line 238
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 241
    .local v7, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    .line 242
    :try_start_2
    invoke-virtual {v7, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 248
    :goto_1
    const-wide/16 v8, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 256
    if-eqz v1, :cond_4

    .line 257
    :try_start_3
    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    .line 260
    :cond_4
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    .line 265
    :goto_2
    const/4 v8, 0x3

    if-ne p1, v8, :cond_5

    if-eqz v0, :cond_5

    .line 266
    const/4 v8, 0x2

    invoke-static {v0, v11, v11, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    move-object v8, v0

    .line 271
    goto :goto_0

    .line 227
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #retriever:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 228
    .local v4, e:Landroid/hwdrm/drm1/HWDrmException;
    :goto_3
    const-string v8, "ThumbnailUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can not get thumb for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/hwdrm/drm1/HWDrmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v1, :cond_3

    .line 230
    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    move-object v8, v12

    .line 231
    goto :goto_0

    .line 245
    .end local v4           #e:Landroid/hwdrm/drm1/HWDrmException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #retriever:Landroid/media/MediaMetadataRetriever;
    :cond_6
    :try_start_4
    invoke-virtual {v7, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 249
    :catch_1
    move-exception v8

    .line 256
    if-eqz v1, :cond_7

    .line 257
    :try_start_5
    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    .line 260
    :cond_7
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 261
    :catch_2
    move-exception v8

    goto :goto_2

    .line 251
    :catch_3
    move-exception v8

    .line 256
    if-eqz v1, :cond_8

    .line 257
    :try_start_6
    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    .line 260
    :cond_8
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 261
    :catch_4
    move-exception v8

    goto :goto_2

    .line 254
    :catchall_0
    move-exception v8

    .line 256
    if-eqz v1, :cond_9

    .line 257
    :try_start_7
    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    .line 260
    :cond_9
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 263
    :goto_4
    throw v8

    .line 261
    :catch_5
    move-exception v9

    goto :goto_4

    :catch_6
    move-exception v8

    goto :goto_2

    .line 227
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .end local v7           #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v2       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    :catch_7
    move-exception v8

    move-object v4, v8

    move-object v1, v2

    .end local v2           #dc:Landroid/hwdrm/drm1/HWDrmContent;
    .restart local v1       #dc:Landroid/hwdrm/drm1/HWDrmContent;
    goto :goto_3
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "source"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    .line 296
    if-nez p0, :cond_0

    .line 297
    const/4 v3, 0x0

    .line 310
    :goto_0
    return-object v3

    .line 301
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 302
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 306
    .local v1, scale:F
    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 307
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 308
    or-int/lit8 v3, p3, 0x1

    invoke-static {v0, p0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, thumbnail:Landroid/graphics/Bitmap;
    move-object v3, v2

    .line 310
    goto :goto_0

    .line 304
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #scale:F
    .end local v2           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .restart local v1       #scale:F
    goto :goto_1
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "uri"
    .parameter "cr"
    .parameter "pfd"
    .parameter "options"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 390
    :cond_0
    if-nez p4, :cond_1

    .line 412
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    .line 414
    :goto_0
    return-object v4

    .line 391
    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    .line 393
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p5
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 394
    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 395
    const/4 v4, 0x1

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 396
    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 397
    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v5, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v5, :cond_4

    .line 412
    :cond_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    goto :goto_0

    .line 401
    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 403
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 405
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 406
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 407
    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 412
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 414
    goto :goto_0

    .line 408
    .end local v2           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 409
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v4, "ThumbnailUtils"

    const-string v5, "Got oom exception "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    goto :goto_0

    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 429
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 431
    :goto_0
    return-object v1

    .line 430
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 431
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "options"

    .prologue
    .line 443
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 444
    .local v2, scaleUp:Z
    :goto_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_3

    .end local p4
    const/4 p4, 0x1

    move v7, p4

    .line 446
    .local v7, recycle:Z
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int v0, p4, p2

    .line 447
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int v1, p4, p3

    .line 448
    .local v1, deltaY:I
    if-nez v2, :cond_4

    if-ltz v0, :cond_0

    if-gez v1, :cond_4

    .line 455
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 457
    .local p0, b2:Landroid/graphics/Bitmap;
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 459
    .local p4, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    div-int/lit8 v0, v0, 0x2

    .end local v0           #deltaX:I
    .end local v2           #scaleUp:Z
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 460
    .local v0, deltaXHalf:I
    const/4 v2, 0x0

    div-int/lit8 v1, v1, 0x2

    .end local v1           #deltaY:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 461
    .local v1, deltaYHalf:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 466
    .local v3, src:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .end local v0           #deltaXHalf:I
    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    .line 467
    .local v1, dstX:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    .line 468
    .local v2, dstY:I
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, v1

    sub-int/2addr p3, v2

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 473
    .end local p2
    .end local p3
    .local v0, dst:Landroid/graphics/Rect;
    const/4 p2, 0x0

    invoke-virtual {p4, p1, v3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 474
    if-eqz v7, :cond_1

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 530
    .end local v0           #dst:Landroid/graphics/Rect;
    .end local v1           #dstX:I
    .end local v2           #dstY:I
    .end local v3           #src:Landroid/graphics/Rect;
    .end local p4           #c:Landroid/graphics/Canvas;
    :cond_1
    :goto_2
    return-object p0

    .line 443
    .end local v7           #recycle:Z
    .local p0, scaler:Landroid/graphics/Matrix;
    .restart local p2
    .restart local p3
    .local p4, options:I
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 444
    .end local p4           #options:I
    .local v2, scaleUp:Z
    :cond_3
    const/4 p4, 0x0

    move v7, p4

    goto :goto_1

    .line 479
    .local v0, deltaX:I
    .local v1, deltaY:I
    .restart local v7       #recycle:Z
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float v1, p4

    .line 480
    .local v1, bitmapWidthF:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float v0, p4

    .line 482
    .local v0, bitmapHeightF:F
    div-float p4, v1, v0

    .line 483
    .local p4, bitmapAspect:F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 485
    .local v2, viewAspect:F
    cmpl-float p4, p4, v2

    if-lez p4, :cond_a

    .line 486
    .end local p4           #bitmapAspect:F
    int-to-float p4, p3

    div-float/2addr p4, v0

    .line 487
    .local p4, scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_5

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_9

    .line 488
    :cond_5
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 502
    :goto_3
    if-eqz p0, :cond_d

    .line 504
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v1           #bitmapWidthF:F
    .end local v2           #viewAspect:F
    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 510
    .local p0, b1:Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v7, :cond_6

    if-eq p0, p1, :cond_6

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 514
    :cond_6
    const/4 p4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local p4           #scale:F
    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 515
    .local p4, dx1:I
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 517
    .local v0, dy1:I
    div-int/lit8 p4, p4, 0x2

    .end local p4           #dx1:I
    div-int/lit8 v0, v0, 0x2

    .end local v0           #dy1:I
    invoke-static {p0, p4, v0, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 524
    .local p2, b2:Landroid/graphics/Bitmap;
    if-eq p2, p0, :cond_8

    .line 525
    if-nez v7, :cond_7

    if-eq p0, p1, :cond_8

    .line 526
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    move-object p0, p2

    .line 530
    .end local p2           #b2:Landroid/graphics/Bitmap;
    .local p0, b2:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 490
    .restart local v1       #bitmapWidthF:F
    .restart local v2       #viewAspect:F
    .local p0, scaler:Landroid/graphics/Matrix;
    .local p2, targetWidth:I
    .local p4, scale:F
    :cond_9
    const/4 p0, 0x0

    goto :goto_3

    .line 493
    .end local p4           #scale:F
    .local v0, bitmapHeightF:F
    :cond_a
    int-to-float p4, p2

    div-float/2addr p4, v1

    .line 494
    .restart local p4       #scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_b

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_c

    .line 495
    :cond_b
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_3

    .line 497
    :cond_c
    const/4 p0, 0x0

    goto :goto_3

    .line 507
    :cond_d
    move-object p0, p1

    .local p0, b1:Landroid/graphics/Bitmap;
    goto :goto_4
.end method
